import 'package:flutter/material.dart';

extension ColorExtension on Color {
  Color setOpacity(double opacity) {
    return withAlpha((255.0 * opacity).round());
  }
}

extension StateExtension on State {
  void setStateIfMounted([VoidCallback? fn]) {
    if (mounted) {
      // ignore: invalid_use_of_protected_member
      setState(fn ?? () {});
    }
  }
}
