import 'package:json_annotation/json_annotation.dart';
import 'package:yummyani_app/api/models/model_json_string.dart';

part 'app_config.g.dart';

@JsonSerializable()
class AppConfig with ModelJsonString{
  String apiUrl;
  String publicApiKey;
  String privateApiKey;

  AppConfig({
    required this.apiUrl,
    required this.publicApiKey,
    required this.privateApiKey,
  });

  factory AppConfig.fromJson(Map<String, dynamic> json) =>
      _$AppConfigFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AppConfigToJson(this);
}
