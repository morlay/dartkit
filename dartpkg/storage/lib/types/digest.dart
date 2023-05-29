import 'dart:async';
import 'dart:convert';

import 'package:crypto/crypto.dart';

class Digest {
  factory Digest.fromString(String str) {
    return Digest.fromBytes(const Utf8Codec().encode(str));
  }

  factory Digest.fromBytes(List<int> bytes) {
    return Digest(
      hash: sha256.convert(bytes).toString(),
    );
  }

  static StreamTransformer<List<int>, Digest> createSha256Transformer() {
    return StreamTransformer.fromBind(
      (input$) => input$.transform(sha256).transform(
            StreamTransformer.fromHandlers(
              handleData: (h, s) => s.add(
                Digest(hash: h.toString()),
              ),
            ),
          ),
    );
  }

  factory Digest.parse(String digest) {
    var parts = digest.split(":");
    if (parts.length != 2) {
      throw Exception("invalid digest: digest");
    }
    return Digest(alg: parts.first, hash: parts.last);
  }

  final String alg;
  final String hash;

  Digest({
    required this.hash,
    this.alg = "sha256",
  });

  factory Digest.fromJson(String digest) => Digest.parse(digest);

  String toJson() {
    return toString();
  }

  @override
  String toString() {
    return "$alg:$hash";
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  bool operator ==(Object other) {
    return other is Digest && other.hashCode == hashCode;
  }
}
