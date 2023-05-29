import '../types/types.dart';

class ErrBlobUnknown {
  Digest digest;
  String path;

  ErrBlobUnknown({
    required this.digest,
    required this.path,
  });

  @override
  String toString() => "unknown blob digest=$digest";
}
