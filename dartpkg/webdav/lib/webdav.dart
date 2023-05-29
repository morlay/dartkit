import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart';
import 'package:roundtripper/roundtripper.dart';

import '../src/auth.dart';
import '../src/multi_status.dart';
import '../src/request_log.dart';

export 'package:roundtripper/roundtripper.dart' show ResponseException;

part '__generated__/webdav.freezed.dart';
part '__generated__/webdav.g.dart';

@freezed
class WebDAV with _$WebDAV {
  WebDAV._();

  @JsonSerializable()
  factory WebDAV({
    required String address,
    required String username,
    required String password,
    @Default('/') String root,
    bool? valid,
  }) = _WebDAV;

  factory WebDAV.fromJson(Map<String, dynamic> json) => _WebDAV.fromJson(json);

  Client get _client {
    return Client(
      roundTripBuilders: [
        HttpBaseAuth(
          username: username,
          password: password,
        ),
        ThrowsNot2xxError(),
        RequestLog(),
      ],
    );
  }

  String _path(String p) {
    if (p.startsWith("/")) {
      p = p.substring(1);
    }
    return "${root.startsWith("/") ? root : "/$root"}/$p";
  }

  String get _address {
    if (address.endsWith("/")) {
      return address.substring(0, address.length - 1);
    }
    return address;
  }

  Uri uri(String p) {
    return Uri.parse("$_address${_path(p)}");
  }

  Future<DMultiStatus> stats(String path) async {
    final resp = await _client.fetch(
      Request(
        method: 'PROPFIND',
        uri: uri(path),
      ),
    );
    return DMultiStatus.fromXML(await resp.text());
  }

  Future<void> mkdir(String path) async {
    await _client.fetch(
      Request(
        method: 'MKCOL',
        uri: uri(path),
      ),
    );
    return;
  }

  Future<List<int>> read(String path) async {
    var resp = await _client.fetch(
      Request(
        method: 'GET',
        uri: uri(path),
      ),
    );
    return resp.blob();
  }

  Future<void> rm(String path) async {
    await _client.fetch(
      Request(
        method: 'DELETE',
        uri: uri(path),
      ),
    );
    return;
  }

  Future<void> write(String file, List<int> data) async {
    final dir = dirname(file);

    if (dir != "" && dir != "/") {
      await mkdir(dir);
    }

    await _client.fetch(
      Request(
        method: 'PUT',
        uri: uri(file),
        requestBody: Stream.fromIterable([data]),
      ),
    );
    return;
  }

  Future<List<int>> mv(String src, String dest) async {
    try {
      // try to delete
      await rm(dest);
    } catch (e) {
      //
    }

    var resp = await _client.fetch(
      Request(
        method: 'MOVE',
        uri: uri(src),
        headers: {
          "destination": uri(dest).toString(),
          "overwrite": "T",
        },
      ),
    );
    return resp.blob();
  }
}

class ThrowsNot2xxError implements RoundTripBuilder {
  ThrowsNot2xxError();

  @override
  RoundTrip build(RoundTrip next) {
    return (request) async {
      var resp = await next(request);
      if (resp.statusCode >= HttpStatus.badRequest) {
        var bytes = await resp.blob();
        if (bytes.isNotEmpty &&
            (resp.headers['content-type']?.contains('json') ?? false)) {
          resp.body = await resp.json();
          throw ResponseException(
            resp.statusCode,
            response: resp,
          );
        } else {
          resp.body = await resp.text();
          throw ResponseException(resp.statusCode, response: resp);
        }
      }
      return resp;
    };
  }
}
