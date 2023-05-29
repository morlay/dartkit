// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../webdav.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WebDAV _$WebDAVFromJson(Map<String, dynamic> json) {
  return _WebDAV.fromJson(json);
}

/// @nodoc
mixin _$WebDAV {
  String get address => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get root => throw _privateConstructorUsedError;
  bool? get valid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebDAVCopyWith<WebDAV> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebDAVCopyWith<$Res> {
  factory $WebDAVCopyWith(WebDAV value, $Res Function(WebDAV) then) =
      _$WebDAVCopyWithImpl<$Res, WebDAV>;
  @useResult
  $Res call(
      {String address,
      String username,
      String password,
      String root,
      bool? valid});
}

/// @nodoc
class _$WebDAVCopyWithImpl<$Res, $Val extends WebDAV>
    implements $WebDAVCopyWith<$Res> {
  _$WebDAVCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? username = null,
    Object? password = null,
    Object? root = null,
    Object? valid = freezed,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String,
      valid: freezed == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WebDAVCopyWith<$Res> implements $WebDAVCopyWith<$Res> {
  factory _$$_WebDAVCopyWith(_$_WebDAV value, $Res Function(_$_WebDAV) then) =
      __$$_WebDAVCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      String username,
      String password,
      String root,
      bool? valid});
}

/// @nodoc
class __$$_WebDAVCopyWithImpl<$Res>
    extends _$WebDAVCopyWithImpl<$Res, _$_WebDAV>
    implements _$$_WebDAVCopyWith<$Res> {
  __$$_WebDAVCopyWithImpl(_$_WebDAV _value, $Res Function(_$_WebDAV) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? username = null,
    Object? password = null,
    Object? root = null,
    Object? valid = freezed,
  }) {
    return _then(_$_WebDAV(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String,
      valid: freezed == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_WebDAV extends _WebDAV {
  _$_WebDAV(
      {required this.address,
      required this.username,
      required this.password,
      this.root = '/',
      this.valid})
      : super._();

  factory _$_WebDAV.fromJson(Map<String, dynamic> json) =>
      _$$_WebDAVFromJson(json);

  @override
  final String address;
  @override
  final String username;
  @override
  final String password;
  @override
  @JsonKey()
  final String root;
  @override
  final bool? valid;

  @override
  String toString() {
    return 'WebDAV(address: $address, username: $username, password: $password, root: $root, valid: $valid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebDAV &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.root, root) || other.root == root) &&
            (identical(other.valid, valid) || other.valid == valid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, address, username, password, root, valid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WebDAVCopyWith<_$_WebDAV> get copyWith =>
      __$$_WebDAVCopyWithImpl<_$_WebDAV>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebDAVToJson(
      this,
    );
  }
}

abstract class _WebDAV extends WebDAV {
  factory _WebDAV(
      {required final String address,
      required final String username,
      required final String password,
      final String root,
      final bool? valid}) = _$_WebDAV;
  _WebDAV._() : super._();

  factory _WebDAV.fromJson(Map<String, dynamic> json) = _$_WebDAV.fromJson;

  @override
  String get address;
  @override
  String get username;
  @override
  String get password;
  @override
  String get root;
  @override
  bool? get valid;
  @override
  @JsonKey(ignore: true)
  _$$_WebDAVCopyWith<_$_WebDAV> get copyWith =>
      throw _privateConstructorUsedError;
}
