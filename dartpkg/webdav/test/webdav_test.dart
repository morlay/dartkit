import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:context/context.dart';
import 'package:logr/logr.dart';
import 'package:logr/stdlogr.dart';
import 'package:test/test.dart';
import 'package:webdav/webdav.dart';

void main() async {
  var ctx = Logger.withLogger(Logger(StdLogSink('webdav')));

  var wd = WebDAV(
    address: Platform.environment['WEBDAV_ADDRESS']!,
    username: Platform.environment['WEBDAV_USERNAME']!,
    password: Platform.environment['WEBDAV_PASSWORD']!,
    root: 'one.v42.test',
  );

  await wd.write("/test.txt", Uint8List.fromList(utf8.encode("123")));

  test(
      "stats",
      runWith(ctx, () async {
        final status = await wd.stats("/test.txt");
        expect(
          status.responses.firstOrNull?.propStat.prop.displayName,
          "test.txt",
        );
      }));

  test(
    'read & write',
    runWith(ctx, () async {
      var data = DateTime.now().toString();
      await wd.write('/test/tmp.txt', Uint8List.fromList(utf8.encode(data)));
      await wd.mv('/test/tmp.txt', '/test/tmp2.txt');

      var remoteData = utf8.decode(await wd.read('/test/tmp2.txt'));
      expect(remoteData, data);

      await wd.rm('/test/tmp2.txt');
    }),
  );
}

R Function() runWith<R>(Context ctx, R Function() action) {
  return () {
    return ctx.run(action);
  };
}
