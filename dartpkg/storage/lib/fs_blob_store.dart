import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:uuid/uuid.dart';

import 'errors/errors.dart';
import 'types/types.dart';

extension StorageTypeRoot on StorageType {
  String get root {
    switch (this) {
      case StorageType.blob:
        return ".store/blobs";
      case StorageType.ingest:
        return ".store/ingests";
      case StorageType.task:
        return ".store/tasks";
      default:
        return "";
    }
  }
}

class FsBlobStore implements BlobStore {
  static File blobDataFile(Directory root, Digest digest) {
    return File(join(
      root.absolute.path,
      StorageType.blob.root,
      digest.alg,
      digest.hash,
      "data",
    ));
  }

  static File ingestTempFile(Directory root, String id) {
    return File(join(
      root.absolute.path,
      StorageType.ingest.root,
      id,
    ));
  }

  final Directory root;

  FsBlobStore(this.root);

  @override
  Future<void> delete(Digest digest) async {
    final f = FsBlobStore.blobDataFile(root, digest);
    await f.delete(recursive: true);
    return;
  }

  @override
  Future<Descriptor> stat(Digest digest) async {
    final f = FsBlobStore.blobDataFile(root, digest);

    if (await f.exists()) {
      var fi = await f.stat();

      return Descriptor(
        mediaType: "application/octet-stream",
        digest: digest,
        size: fi.size,
      );
    }

    throw ErrBlobUnknown(
      digest: digest,
      path: f.absolute.path,
    );
  }

  @override
  Future<BlobWriter> create() async {
    final id = const Uuid().v4();

    return _BlobWriter(
      id: id,
      file: FsBlobStore.ingestTempFile(root, id),
      blobStatter: this,
    );
  }

  @override
  Future<Descriptor> put(String mediaType, List<int> data) async {
    final w = await create();

    await w.write(data);

    return await w.commit(Descriptor(
      mediaType: mediaType,
    ));
  }

  @override
  Future<List<int>> get(Digest digest) async {
    try {
      await stat(digest);
      return await FsBlobStore.blobDataFile(root, digest).readAsBytes();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Stream<List<int>>> open(Digest digest, {int? start, int? end}) async {
    try {
      await stat(digest);
      return FsBlobStore.blobDataFile(root, digest).openRead(start, end);
    } catch (e) {
      rethrow;
    }
  }
}

class _BlobWriter extends BlobWriter {
  @override
  final String id;
  final File file;
  final BlobStatter blobStatter;

  _BlobWriter({
    required this.id,
    required this.file,
    required this.blobStatter,
  });

  @override
  Future<void> cancel() async {
    await close();
    await file.delete();
  }

  @override
  Future<Descriptor> commit(Descriptor provisional) async {
    await close();

    try {
      final d = await blobStatter.stat(_digest!);
      await file.delete();
      return d;
    } catch (e) {
      if (e is ErrBlobUnknown) {
        await Directory(dirname(e.path)).create(recursive: true);
        await file.rename(e.path);

        return Descriptor(
          mediaType: provisional.mediaType,
          digest: e.digest,
          size: _size,
        );
      }

      rethrow;
    }
  }

  @override
  Future<int> write(List<int> data) async {
    (await writer()).add(data);
    return data.length;
  }

  StreamController<List<int>>? _writer;
  List<StreamSubscription>? _sub;
  Digest? _digest;
  int? _size;

  Future<void> close() async {
    await _writer?.close();
    _sub?.forEach((s) => s.cancel());
    _sub = null;
    _writer = null;
  }

  Future<StreamController<List<int>>> writer() async {
    if (_writer != null) {
      return _writer!;
    }

    if (!(await file.exists())) {
      await file.create(recursive: true);
    }

    final w$ = StreamController<List<int>>.broadcast();

    final io = file.openWrite();

    _sub = [
      w$.stream.transform(Digest.createSha256Transformer()).listen((digest) {
        _digest = digest;
      }),
      w$.stream.listen(
        (buf) {
          io.add(buf);
          _size = (_size ?? 0) + buf.length;
        },
        onError: (err) {
          io.close();
        },
        onDone: () {
          io.close();
        },
      )
    ];

    return _writer ??= w$;
  }
}
