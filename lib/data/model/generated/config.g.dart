// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfigImpl _$$ConfigImplFromJson(Map<String, dynamic> json) => _$ConfigImpl(
      env: $enumDecode(_$EnvEnumMap, json['env']),
      apiUrl: json['apiUrl'] as String,
    );

Map<String, dynamic> _$$ConfigImplToJson(_$ConfigImpl instance) =>
    <String, dynamic>{
      'env': _$EnvEnumMap[instance.env]!,
      'apiUrl': instance.apiUrl,
    };

const _$EnvEnumMap = {
  Env.local: 'local',
  Env.dev: 'dev',
  Env.prod: 'prod',
};
