// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../multi_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DResponse _$$_DResponseFromJson(Map<String, dynamic> json) => _$_DResponse(
      href: json['d:href'] as String,
      propStat: DPropStat.fromJson(json['d:propstat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DResponseToJson(_$_DResponse instance) =>
    <String, dynamic>{
      'd:href': instance.href,
      'd:propstat': instance.propStat,
    };

_$_DPropStat _$$_DPropStatFromJson(Map<String, dynamic> json) => _$_DPropStat(
      prop: DProp.fromJson(json['d:prop'] as Map<String, dynamic>),
      status: json['d:status'] as String,
    );

Map<String, dynamic> _$$_DPropStatToJson(_$_DPropStat instance) =>
    <String, dynamic>{
      'd:prop': instance.prop,
      'd:status': instance.status,
    };

_$_DProp _$$_DPropFromJson(Map<String, dynamic> json) => _$_DProp(
      resourceType: json['d:resourcetype'] as Map<String, dynamic>?,
      displayName: json['d:displayname'] as String?,
      owner: json['d:owner'] as String?,
      etag: json['d:getetag'] as String?,
      contentType: json['d:getcontenttype'] as String?,
      contentLength: normalizeInteger(json['d:getcontentlength']),
      lastModified: normalizeDateTime(json['d:getlastmodified']),
    );

Map<String, dynamic> _$$_DPropToJson(_$_DProp instance) => <String, dynamic>{
      'd:resourcetype': instance.resourceType,
      'd:displayname': instance.displayName,
      'd:owner': instance.owner,
      'd:getetag': instance.etag,
      'd:getcontenttype': instance.contentType,
      'd:getcontentlength': instance.contentLength,
      'd:getlastmodified': instance.lastModified?.toIso8601String(),
    };
