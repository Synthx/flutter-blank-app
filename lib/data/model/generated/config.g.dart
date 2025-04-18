// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Config _$ConfigFromJson(Map<String, dynamic> json) => _Config(
  env: $enumDecode(_$EnvEnumMap, json['env']),
  apiUrl: json['apiUrl'] as String,
);

Map<String, dynamic> _$ConfigToJson(_Config instance) => <String, dynamic>{
  'env': _$EnvEnumMap[instance.env]!,
  'apiUrl': instance.apiUrl,
};

const _$EnvEnumMap = {Env.local: 'local', Env.dev: 'dev', Env.prod: 'prod'};
