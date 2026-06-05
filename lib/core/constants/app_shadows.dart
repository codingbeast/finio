import 'package:flutter/material.dart';

class AppShadows {
  static List<BoxShadow> card(Color color) => [
    BoxShadow(
      color: color.withValues(alpha: 0.08),
      blurRadius: 12,
      offset: const Offset(0, 4),
    ),
  ];

  static List<BoxShadow> glowing(Color color) => [
    BoxShadow(
      color: color.withValues(alpha: 0.2),
      blurRadius: 30,
      spreadRadius: 10,
      offset: const Offset(0, 10),
    ),
  ];
}
