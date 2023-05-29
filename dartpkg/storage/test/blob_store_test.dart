import 'dart:convert';
import 'dart:io';

import 'package:storage/fs_blob_store.dart';
import 'package:storage/types/types.dart';
import 'package:test/test.dart';

void main() {
  group("Storage", () {
    final store = FsBlobStore(Directory(".turbo/storage_test"));

    const text = "中文123abc";
    final dgst = Digest.fromString(text);

    test('ingest', () async {
      final w = await store.create();

      for (var c in const Utf8Codec().encode(text)) {
        await w.write([c]);
      }

      final d = await w.commit(Descriptor(mediaType: "text/plain"));

      expect(d.size, 12);
      expect(d.digest, dgst);
    });

    test('provider', () async {
      final data = await store.get(dgst);
      expect(const Utf8Codec().decode(data), text);
    });
  });
}
