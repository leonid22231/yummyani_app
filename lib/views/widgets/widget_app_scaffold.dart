import 'package:flutter/material.dart';
import 'package:yummyani_app/app/app_colors.dart';

class WidgetAppScaffold extends StatefulWidget {
  final Widget body;
  const WidgetAppScaffold({required this.body, super.key});

  @override
  State<StatefulWidget> createState() => _WidgetAppScaffoldState();
}

class _WidgetAppScaffoldState extends State<WidgetAppScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: AppColors.backgroundColor,
      extendBodyBehindAppBar: true,
      body: widget.body,
    );
  }
}
