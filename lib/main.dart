import 'package:flutter/material.dart';
import 'package:yummyani_app/app/app_translates.dart';
import 'package:yummyani_app/di/di.dart';
import 'package:yummyani_app/views/home/screen_home.dart';

void main() async {
  await init();
  runApp(const App());
}

Future<void> init() async {
  await setupDi();
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTranslates.appTitle.toString(),
      home: const ScreenHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
