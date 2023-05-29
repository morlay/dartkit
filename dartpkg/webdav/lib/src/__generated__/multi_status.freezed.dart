// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../multi_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DResponse _$DResponseFromJson(Map<String, dynamic> json) {
  return _DResponse.fromJson(json);
}

/// @nodoc
mixin _$DResponse {
  @JsonKey(name: "d:href")
  String get href => throw _privateConstructorUsedError;
  @JsonKey(name: "d:propstat")
  DPropStat get propStat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DResponseCopyWith<DResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DResponseCopyWith<$Res> {
  factory $DResponseCopyWith(DResponse value, $Res Function(DResponse) then) =
      _$DResponseCopyWithImpl<$Res, DResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "d:href") String href,
      @JsonKey(name: "d:propstat") DPropStat propStat});

  $DPropStatCopyWith<$Res> get propStat;
}

/// @nodoc
class _$DResponseCopyWithImpl<$Res, $Val extends DResponse>
    implements $DResponseCopyWith<$Res> {
  _$DResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? propStat = null,
  }) {
    return _then(_value.copyWith(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      propStat: null == propStat
          ? _value.propStat
          : propStat // ignore: cast_nullable_to_non_nullable
              as DPropStat,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DPropStatCopyWith<$Res> get propStat {
    return $DPropStatCopyWith<$Res>(_value.propStat, (value) {
      return _then(_value.copyWith(propStat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DResponseCopyWith<$Res> implements $DResponseCopyWith<$Res> {
  factory _$$_DResponseCopyWith(
          _$_DResponse value, $Res Function(_$_DResponse) then) =
      __$$_DResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "d:href") String href,
      @JsonKey(name: "d:propstat") DPropStat propStat});

  @override
  $DPropStatCopyWith<$Res> get propStat;
}

/// @nodoc
class __$$_DResponseCopyWithImpl<$Res>
    extends _$DResponseCopyWithImpl<$Res, _$_DResponse>
    implements _$$_DResponseCopyWith<$Res> {
  __$$_DResponseCopyWithImpl(
      _$_DResponse _value, $Res Function(_$_DResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? propStat = null,
  }) {
    return _then(_$_DResponse(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      propStat: null == propStat
          ? _value.propStat
          : propStat // ignore: cast_nullable_to_non_nullable
              as DPropStat,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_DResponse implements _DResponse {
  _$_DResponse(
      {@JsonKey(name: "d:href") required this.href,
      @JsonKey(name: "d:propstat") required this.propStat});

  factory _$_DResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DResponseFromJson(json);

  @override
  @JsonKey(name: "d:href")
  final String href;
  @override
  @JsonKey(name: "d:propstat")
  final DPropStat propStat;

  @override
  String toString() {
    return 'DResponse(href: $href, propStat: $propStat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DResponse &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.propStat, propStat) ||
                other.propStat == propStat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href, propStat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DResponseCopyWith<_$_DResponse> get copyWith =>
      __$$_DResponseCopyWithImpl<_$_DResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DResponseToJson(
      this,
    );
  }
}

abstract class _DResponse implements DResponse {
  factory _DResponse(
          {@JsonKey(name: "d:href") required final String href,
          @JsonKey(name: "d:propstat") required final DPropStat propStat}) =
      _$_DResponse;

  factory _DResponse.fromJson(Map<String, dynamic> json) =
      _$_DResponse.fromJson;

  @override
  @JsonKey(name: "d:href")
  String get href;
  @override
  @JsonKey(name: "d:propstat")
  DPropStat get propStat;
  @override
  @JsonKey(ignore: true)
  _$$_DResponseCopyWith<_$_DResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DPropStat _$DPropStatFromJson(Map<String, dynamic> json) {
  return _DPropStat.fromJson(json);
}

/// @nodoc
mixin _$DPropStat {
  @JsonKey(name: "d:prop")
  DProp get prop => throw _privateConstructorUsedError;
  @JsonKey(name: "d:status")
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DPropStatCopyWith<DPropStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DPropStatCopyWith<$Res> {
  factory $DPropStatCopyWith(DPropStat value, $Res Function(DPropStat) then) =
      _$DPropStatCopyWithImpl<$Res, DPropStat>;
  @useResult
  $Res call(
      {@JsonKey(name: "d:prop") DProp prop,
      @JsonKey(name: "d:status") String status});

  $DPropCopyWith<$Res> get prop;
}

/// @nodoc
class _$DPropStatCopyWithImpl<$Res, $Val extends DPropStat>
    implements $DPropStatCopyWith<$Res> {
  _$DPropStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prop = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      prop: null == prop
          ? _value.prop
          : prop // ignore: cast_nullable_to_non_nullable
              as DProp,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DPropCopyWith<$Res> get prop {
    return $DPropCopyWith<$Res>(_value.prop, (value) {
      return _then(_value.copyWith(prop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DPropStatCopyWith<$Res> implements $DPropStatCopyWith<$Res> {
  factory _$$_DPropStatCopyWith(
          _$_DPropStat value, $Res Function(_$_DPropStat) then) =
      __$$_DPropStatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "d:prop") DProp prop,
      @JsonKey(name: "d:status") String status});

  @override
  $DPropCopyWith<$Res> get prop;
}

/// @nodoc
class __$$_DPropStatCopyWithImpl<$Res>
    extends _$DPropStatCopyWithImpl<$Res, _$_DPropStat>
    implements _$$_DPropStatCopyWith<$Res> {
  __$$_DPropStatCopyWithImpl(
      _$_DPropStat _value, $Res Function(_$_DPropStat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prop = null,
    Object? status = null,
  }) {
    return _then(_$_DPropStat(
      prop: null == prop
          ? _value.prop
          : prop // ignore: cast_nullable_to_non_nullable
              as DProp,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DPropStat implements _DPropStat {
  _$_DPropStat(
      {@JsonKey(name: "d:prop") required this.prop,
      @JsonKey(name: "d:status") required this.status});

  factory _$_DPropStat.fromJson(Map<String, dynamic> json) =>
      _$$_DPropStatFromJson(json);

  @override
  @JsonKey(name: "d:prop")
  final DProp prop;
  @override
  @JsonKey(name: "d:status")
  final String status;

  @override
  String toString() {
    return 'DPropStat(prop: $prop, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DPropStat &&
            (identical(other.prop, prop) || other.prop == prop) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, prop, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DPropStatCopyWith<_$_DPropStat> get copyWith =>
      __$$_DPropStatCopyWithImpl<_$_DPropStat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DPropStatToJson(
      this,
    );
  }
}

abstract class _DPropStat implements DPropStat {
  factory _DPropStat(
      {@JsonKey(name: "d:prop") required final DProp prop,
      @JsonKey(name: "d:status") required final String status}) = _$_DPropStat;

  factory _DPropStat.fromJson(Map<String, dynamic> json) =
      _$_DPropStat.fromJson;

  @override
  @JsonKey(name: "d:prop")
  DProp get prop;
  @override
  @JsonKey(name: "d:status")
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_DPropStatCopyWith<_$_DPropStat> get copyWith =>
      throw _privateConstructorUsedError;
}

DProp _$DPropFromJson(Map<String, dynamic> json) {
  return _DProp.fromJson(json);
}

/// @nodoc
mixin _$DProp {
  @JsonKey(name: "d:resourcetype")
  Map<dynamic, dynamic>? get resourceType => throw _privateConstructorUsedError;
  @JsonKey(name: "d:displayname")
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: "d:owner")
  String? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: "d:getetag")
  String? get etag => throw _privateConstructorUsedError;
  @JsonKey(name: "d:getcontenttype")
  String? get contentType => throw _privateConstructorUsedError;
  @JsonKey(name: "d:getcontentlength", fromJson: normalizeInteger)
  int? get contentLength => throw _privateConstructorUsedError;
  @JsonKey(name: "d:getlastmodified", fromJson: normalizeDateTime)
  DateTime? get lastModified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DPropCopyWith<DProp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DPropCopyWith<$Res> {
  factory $DPropCopyWith(DProp value, $Res Function(DProp) then) =
      _$DPropCopyWithImpl<$Res, DProp>;
  @useResult
  $Res call(
      {@JsonKey(name: "d:resourcetype")
          Map<dynamic, dynamic>? resourceType,
      @JsonKey(name: "d:displayname")
          String? displayName,
      @JsonKey(name: "d:owner")
          String? owner,
      @JsonKey(name: "d:getetag")
          String? etag,
      @JsonKey(name: "d:getcontenttype")
          String? contentType,
      @JsonKey(name: "d:getcontentlength", fromJson: normalizeInteger)
          int? contentLength,
      @JsonKey(name: "d:getlastmodified", fromJson: normalizeDateTime)
          DateTime? lastModified});
}

/// @nodoc
class _$DPropCopyWithImpl<$Res, $Val extends DProp>
    implements $DPropCopyWith<$Res> {
  _$DPropCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = freezed,
    Object? displayName = freezed,
    Object? owner = freezed,
    Object? etag = freezed,
    Object? contentType = freezed,
    Object? contentLength = freezed,
    Object? lastModified = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: freezed == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentLength: freezed == contentLength
          ? _value.contentLength
          : contentLength // ignore: cast_nullable_to_non_nullable
              as int?,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DPropCopyWith<$Res> implements $DPropCopyWith<$Res> {
  factory _$$_DPropCopyWith(_$_DProp value, $Res Function(_$_DProp) then) =
      __$$_DPropCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "d:resourcetype")
          Map<dynamic, dynamic>? resourceType,
      @JsonKey(name: "d:displayname")
          String? displayName,
      @JsonKey(name: "d:owner")
          String? owner,
      @JsonKey(name: "d:getetag")
          String? etag,
      @JsonKey(name: "d:getcontenttype")
          String? contentType,
      @JsonKey(name: "d:getcontentlength", fromJson: normalizeInteger)
          int? contentLength,
      @JsonKey(name: "d:getlastmodified", fromJson: normalizeDateTime)
          DateTime? lastModified});
}

/// @nodoc
class __$$_DPropCopyWithImpl<$Res> extends _$DPropCopyWithImpl<$Res, _$_DProp>
    implements _$$_DPropCopyWith<$Res> {
  __$$_DPropCopyWithImpl(_$_DProp _value, $Res Function(_$_DProp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = freezed,
    Object? displayName = freezed,
    Object? owner = freezed,
    Object? etag = freezed,
    Object? contentType = freezed,
    Object? contentLength = freezed,
    Object? lastModified = freezed,
  }) {
    return _then(_$_DProp(
      resourceType: freezed == resourceType
          ? _value._resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentLength: freezed == contentLength
          ? _value.contentLength
          : contentLength // ignore: cast_nullable_to_non_nullable
              as int?,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DProp implements _DProp {
  _$_DProp(
      {@JsonKey(name: "d:resourcetype")
          final Map<dynamic, dynamic>? resourceType,
      @JsonKey(name: "d:displayname")
          this.displayName,
      @JsonKey(name: "d:owner")
          this.owner,
      @JsonKey(name: "d:getetag")
          this.etag,
      @JsonKey(name: "d:getcontenttype")
          this.contentType,
      @JsonKey(name: "d:getcontentlength", fromJson: normalizeInteger)
          this.contentLength,
      @JsonKey(name: "d:getlastmodified", fromJson: normalizeDateTime)
          this.lastModified})
      : _resourceType = resourceType;

  factory _$_DProp.fromJson(Map<String, dynamic> json) =>
      _$$_DPropFromJson(json);

  final Map<dynamic, dynamic>? _resourceType;
  @override
  @JsonKey(name: "d:resourcetype")
  Map<dynamic, dynamic>? get resourceType {
    final value = _resourceType;
    if (value == null) return null;
    if (_resourceType is EqualUnmodifiableMapView) return _resourceType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: "d:displayname")
  final String? displayName;
  @override
  @JsonKey(name: "d:owner")
  final String? owner;
  @override
  @JsonKey(name: "d:getetag")
  final String? etag;
  @override
  @JsonKey(name: "d:getcontenttype")
  final String? contentType;
  @override
  @JsonKey(name: "d:getcontentlength", fromJson: normalizeInteger)
  final int? contentLength;
  @override
  @JsonKey(name: "d:getlastmodified", fromJson: normalizeDateTime)
  final DateTime? lastModified;

  @override
  String toString() {
    return 'DProp(resourceType: $resourceType, displayName: $displayName, owner: $owner, etag: $etag, contentType: $contentType, contentLength: $contentLength, lastModified: $lastModified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DProp &&
            const DeepCollectionEquality()
                .equals(other._resourceType, _resourceType) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.contentLength, contentLength) ||
                other.contentLength == contentLength) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_resourceType),
      displayName,
      owner,
      etag,
      contentType,
      contentLength,
      lastModified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DPropCopyWith<_$_DProp> get copyWith =>
      __$$_DPropCopyWithImpl<_$_DProp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DPropToJson(
      this,
    );
  }
}

abstract class _DProp implements DProp {
  factory _DProp(
      {@JsonKey(name: "d:resourcetype")
          final Map<dynamic, dynamic>? resourceType,
      @JsonKey(name: "d:displayname")
          final String? displayName,
      @JsonKey(name: "d:owner")
          final String? owner,
      @JsonKey(name: "d:getetag")
          final String? etag,
      @JsonKey(name: "d:getcontenttype")
          final String? contentType,
      @JsonKey(name: "d:getcontentlength", fromJson: normalizeInteger)
          final int? contentLength,
      @JsonKey(name: "d:getlastmodified", fromJson: normalizeDateTime)
          final DateTime? lastModified}) = _$_DProp;

  factory _DProp.fromJson(Map<String, dynamic> json) = _$_DProp.fromJson;

  @override
  @JsonKey(name: "d:resourcetype")
  Map<dynamic, dynamic>? get resourceType;
  @override
  @JsonKey(name: "d:displayname")
  String? get displayName;
  @override
  @JsonKey(name: "d:owner")
  String? get owner;
  @override
  @JsonKey(name: "d:getetag")
  String? get etag;
  @override
  @JsonKey(name: "d:getcontenttype")
  String? get contentType;
  @override
  @JsonKey(name: "d:getcontentlength", fromJson: normalizeInteger)
  int? get contentLength;
  @override
  @JsonKey(name: "d:getlastmodified", fromJson: normalizeDateTime)
  DateTime? get lastModified;
  @override
  @JsonKey(ignore: true)
  _$$_DPropCopyWith<_$_DProp> get copyWith =>
      throw _privateConstructorUsedError;
}
