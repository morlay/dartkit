import 'dart:convert';

import 'package:roundtripper/roundtripper.dart';

class HttpBaseAuth implements RoundTripBuilder {
  String username;
  String password;

  HttpBaseAuth({
    required this.username,
    required this.password,
  });

  @override
  RoundTrip build(RoundTrip next) {
    return (request) async {
      return next(
        request.copyWith(
          headers: _applyAuthHeader(request.headers ?? {}),
        ),
      );
    };
  }

  Map<String, dynamic> _applyAuthHeader(Map<String, dynamic> headers) {
    return {
      ...headers,
      'authorization':
          "Basic ${base64Encode(utf8.encode("$username:$password"))}"
    };
  }
}
