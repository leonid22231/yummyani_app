import 'dart:ui';

extension ColorExtension on Color {
  Color setOpacity(double opacity) {
    return withAlpha((255.0 * opacity).round());
  }
}
