import 'dart:io' as io;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:yummyani_app/app/app_translates.dart';
import 'package:yummyani_app/app/di.dart';
import 'package:yummyani_app/services/service_rest_client.dart';
import 'package:yummyani_app/views/home/screen_home.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class App {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static void start() async {
    if (kDebugMode) {
      io.HttpClient.enableTimelineLogging = true;
    }
    await init();
    runApp(instanceApp());
  }

  static Future<void> init() async {
    await setupDi();
    WidgetsFlutterBinding.ensureInitialized();
    await di<ServiceRestClient>().init();
  }

  static Widget instanceApp() {
    return Builder(
      builder: (context) => MaterialApp(
        title: AppTranslates.appTitle.toString(),
        home: const ScreenHome(),
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        navigatorObservers: [routeObserver],
      ),
    );
  }
}
