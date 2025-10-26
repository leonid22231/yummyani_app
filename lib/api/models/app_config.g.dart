// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppConfig _$AppConfigFromJson(Map<String, dynamic> json) => AppConfig(
  apiUrl: json['api_url'] as String,
  publicApiKey: json['public_api_key'] as String,
  privateApiKey: json['private_api_key'] as String,
);

Map<String, dynamic> _$AppConfigToJson(AppConfig instance) => <String, dynamic>{
  'api_url': instance.apiUrl,
  'public_api_key': instance.publicApiKey,
  'private_api_key': instance.privateApiKey,
};
