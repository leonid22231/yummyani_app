import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:yummyani_app/api/rest_client.dart';
import 'package:yummyani_app/app/app_translates.dart';
import 'package:yummyani_app/services/service_rest_client.dart';

GetIt di = GetIt.instance;

Future<void> setupDi() async {
  await initLogger();
  di.registerLazySingleton<ServiceRestClient>(() => ServiceRestClient());
  di.registerLazySingleton<RestClient>(() => RestClient());
}

Future<void> initLogger() async {
  if (di.isRegistered<Logger>()) {
    di.unregister<Logger>();
  }
  di.registerLazySingleton<Logger>(
    () => Logger(AppTranslates.appTitle.toString()),
  );

  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    String message = record.message;
    bool isJson = false;
    final jsonStart = message.indexOf('{');
    final jsonEnd = message.lastIndexOf('}');

    if (jsonStart != -1 && jsonEnd != -1 && jsonEnd > jsonStart) {
      final potentialJson = message.substring(jsonStart, jsonEnd + 1);
      try {
        var decoded = jsonDecode(potentialJson);
        var prettyJson = const JsonEncoder.withIndent('  ').convert(decoded);

        message = message.replaceRange(
          jsonStart,
          jsonEnd + 1,
          '''\n$prettyJson\n''',
        );
        isJson = true;
      } catch (e) {
        //ignore
      }
    }

    // ignore: avoid_print
    print(
      '${record.level.name[0]}: ${record.time}${isJson ? '\n' : ' : '}$message',
    );
  });
}
