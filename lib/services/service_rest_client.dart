import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:logging/logging.dart';
import 'package:yummyani_app/api/models/app_config.dart';
import 'package:yummyani_app/app/di.dart';

class ServiceRestClient {
  final configFile = 'assets/build_config.json';
  bool isInit = false;
  late AppConfig _config;

  Future<void> init() async {
    di<Logger>().info('Start init from file path[$configFile]');

    String configText = await rootBundle.loadString(configFile);

    if (configText.isNotEmpty) {
      AppConfig config = AppConfig.fromJson(jsonDecode(configText));
      _config = config;
      di<Logger>().info('AppConfig content ${_config.toJsonString()}');
      isInit = true;
    } else {
      throw Exception('$configFile not found or empty');
    }
  }

  AppConfig getAppConfig() =>
      isInit ? _config : throw Exception('ERROR Config is not init');
}
