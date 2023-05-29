import "package:freezed_annotation/freezed_annotation.dart";
import 'package:intl/intl.dart';
import "package:xml/xml.dart";

part '__generated__/multi_status.freezed.dart';
part '__generated__/multi_status.g.dart';

dynamic _convertValue(XmlHasChildren p) {
  Map<String, dynamic> m = {};

  for (var e in p.children) {
    if (e is XmlText) {
      return e.value;
    }
    if (e is XmlElement) {
      final el = m[e.name.qualified];
      if (el == null) {
        m[e.name.qualified] = _convertValue(e);
      } else {
        m[e.name.qualified] = [
          ...(el is List) ? el : [el],
          _convertValue(e)
        ];
      }
    }
  }

  return m;
}

class DMultiStatus {
  factory DMultiStatus.fromXML(String xml) {
    List<DResponse> responses = [];

    final doc = XmlDocument.parse(xml);
    final values = _convertValue(doc);

    final dresponse = values["d:multistatus"]["d:response"];

    for (var r in (dresponse is List ? dresponse : [dresponse])) {
      responses.add(DResponse.fromJson(r));
    }

    return DMultiStatus(
      responses: responses,
    );
  }

  final List<DResponse> responses;

  DMultiStatus({
    required this.responses,
  });
}

@freezed
class DResponse with _$DResponse {
  @JsonSerializable()
  factory DResponse({
    @JsonKey(name: "d:href") required String href,
    @JsonKey(name: "d:propstat") required DPropStat propStat,
  }) = _DResponse;

  factory DResponse.fromJson(Map<String, dynamic> json) =>
      _DResponse.fromJson(json);
}

@freezed
class DPropStat with _$DPropStat {
  factory DPropStat({
    @JsonKey(name: "d:prop") required DProp prop,
    @JsonKey(name: "d:status") required String status,
  }) = _DPropStat;

  factory DPropStat.fromJson(Map<String, dynamic> json) =>
      _DPropStat.fromJson(json);
}

int normalizeInteger(v) {
  if (v is int) {
    return v;
  } else if (v is String) {
    return int.parse(v);
  }
  return v;
}

DateTime normalizeDateTime(v) {
  if (v is String) {
    return DateFormat('E, d MMM yyyy HH:mm:ss').parse(v);
  }
  return DateTime.parse(v);
}

@freezed
class DProp with _$DProp {
  factory DProp({
    @JsonKey(name: "d:resourcetype") Map? resourceType,
    @JsonKey(name: "d:displayname") String? displayName,
    @JsonKey(name: "d:owner") String? owner,
    @JsonKey(name: "d:getetag") String? etag,
    @JsonKey(name: "d:getcontenttype") String? contentType,
    @JsonKey(name: "d:getcontentlength", fromJson: normalizeInteger)
    int? contentLength,
    @JsonKey(name: "d:getlastmodified", fromJson: normalizeDateTime)
    DateTime? lastModified,
  }) = _DProp;

  factory DProp.fromJson(Map<String, dynamic> json) => _DProp.fromJson(json);
}
