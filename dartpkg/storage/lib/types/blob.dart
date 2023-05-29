import 'digest.dart';

enum StorageType {
  blob,
  ingest,
  task,
}

abstract class BlobStatter {
  Future<Descriptor> stat(Digest digest);
}

abstract class BlobIngester {
  Future<Descriptor> put(String mediaType, List<int> data);

  Future<BlobWriter> create();
}

abstract class BlobDeleter {
  Future<void> delete(Digest digest);
}

abstract class BlobProvider {
  Future<List<int>> get(Digest digest);
  Future<Stream<List<int>>> open(Digest digest, {int? start, int? end});
}

abstract class BlobService implements BlobStatter, BlobProvider, BlobIngester {}

abstract class BlobStore implements BlobService, BlobDeleter {}

abstract class BlobWriter {
  String get id;
  Future<int> write(List<int> data);
  Future<Descriptor> commit(Descriptor provisional);
  Future<void> cancel();
}

class Descriptor {
  final String? mediaType;
  final Digest? digest;
  final int? size;

  Descriptor({
    this.mediaType,
    this.digest,
    this.size,
  });
}
