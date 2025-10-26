import 'package:flutter/material.dart';
import 'package:yummyani_app/app/app_translates.dart';
import 'package:yummyani_app/views/widgets/widget_app_scaffold.dart';
import 'package:yummyani_app/views/widgets/widget_appbar.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<StatefulWidget> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return WidgetAppScaffold(
      body: WidgetAppBar.bodyFromScaffold(
        title: AppTranslates.appTitle.toString(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [SizedBox(height: 20),],
        ),
      ),
    );
  }
}
