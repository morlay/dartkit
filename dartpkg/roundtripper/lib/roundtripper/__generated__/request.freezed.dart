// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Request<T> {
  String get method => throw _privateConstructorUsedError;
  Uri get uri => throw _privateConstructorUsedError;
  Map<String, dynamic>? get headers => throw _privateConstructorUsedError;
  T? get body => throw _privateConstructorUsedError;
  Stream<List<int>>? get requestBody => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestCopyWith<T, Request<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCopyWith<T, $Res> {
  factory $RequestCopyWith(Request<T> value, $Res Function(Request<T>) then) =
      _$RequestCopyWithImpl<T, $Res, Request<T>>;
  @useResult
  $Res call(
      {String method,
      Uri uri,
      Map<String, dynamic>? headers,
      T? body,
      Stream<List<int>>? requestBody});
}

/// @nodoc
class _$RequestCopyWithImpl<T, $Res, $Val extends Request<T>>
    implements $RequestCopyWith<T, $Res> {
  _$RequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? uri = null,
    Object? headers = freezed,
    Object? body = freezed,
    Object? requestBody = freezed,
  }) {
    return _then(_value.copyWith(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as T?,
      requestBody: freezed == requestBody
          ? _value.requestBody
          : requestBody // ignore: cast_nullable_to_non_nullable
              as Stream<List<int>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestCopyWith<T, $Res>
    implements $RequestCopyWith<T, $Res> {
  factory _$$_RequestCopyWith(
          _$_Request<T> value, $Res Function(_$_Request<T>) then) =
      __$$_RequestCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String method,
      Uri uri,
      Map<String, dynamic>? headers,
      T? body,
      Stream<List<int>>? requestBody});
}

/// @nodoc
class __$$_RequestCopyWithImpl<T, $Res>
    extends _$RequestCopyWithImpl<T, $Res, _$_Request<T>>
    implements _$$_RequestCopyWith<T, $Res> {
  __$$_RequestCopyWithImpl(
      _$_Request<T> _value, $Res Function(_$_Request<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? uri = null,
    Object? headers = freezed,
    Object? body = freezed,
    Object? requestBody = freezed,
  }) {
    return _then(_$_Request<T>(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as T?,
      requestBody: freezed == requestBody
          ? _value.requestBody
          : requestBody // ignore: cast_nullable_to_non_nullable
              as Stream<List<int>>?,
    ));
  }
}

/// @nodoc

class _$_Request<T> extends _Request<T> {
  _$_Request(
      {required this.method,
      required this.uri,
      final Map<String, dynamic>? headers,
      this.body,
      this.requestBody})
      : _headers = headers,
        super._();

  @override
  final String method;
  @override
  final Uri uri;
  final Map<String, dynamic>? _headers;
  @override
  Map<String, dynamic>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final T? body;
  @override
  final Stream<List<int>>? requestBody;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Request<T> &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            (identical(other.requestBody, requestBody) ||
                other.requestBody == requestBody));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      method,
      uri,
      const DeepCollectionEquality().hash(_headers),
      const DeepCollectionEquality().hash(body),
      requestBody);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestCopyWith<T, _$_Request<T>> get copyWith =>
      __$$_RequestCopyWithImpl<T, _$_Request<T>>(this, _$identity);
}

abstract class _Request<T> extends Request<T> {
  factory _Request(
      {required final String method,
      required final Uri uri,
      final Map<String, dynamic>? headers,
      final T? body,
      final Stream<List<int>>? requestBody}) = _$_Request<T>;
  _Request._() : super._();

  @override
  String get method;
  @override
  Uri get uri;
  @override
  Map<String, dynamic>? get headers;
  @override
  T? get body;
  @override
  Stream<List<int>>? get requestBody;
  @override
  @JsonKey(ignore: true)
  _$$_RequestCopyWith<T, _$_Request<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
