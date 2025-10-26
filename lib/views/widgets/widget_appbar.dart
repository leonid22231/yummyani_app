import 'package:flutter/material.dart';
import 'package:yummyani_app/app/app_colors.dart';

class WidgetAppBar extends StatefulWidget {
  final String title;
  const WidgetAppBar({required this.title, super.key});

  static Widget bodyFromScaffold({
    required String title,
    required Widget child,
  }) {
    return Column(
      children: [
        WidgetAppBar(title: title),
        Expanded(child: child),
      ],
    );
  }

  @override
  State<StatefulWidget> createState() => _WidgetAppBarState();
}

class _WidgetAppBarState extends State<WidgetAppBar> {
  double get deviceTopPadding => MediaQuery.of(context).padding.top;
  final double fontSize = 24;
  final double height = 150;
  double get topPadding =>
      deviceTopPadding + (((height - deviceTopPadding) / 2) - (fontSize / 2));
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors.blockColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: topPadding),
          Text(
            widget.title,
            style: TextStyle(
              fontSize: fontSize,
              height: 1,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTitle() {
    return SizedBox();
  }

  Widget buildRightPart() {
    return SizedBox.shrink();
  }

  Widget buildLeftPart() {
    return SizedBox.shrink();
  }
}
