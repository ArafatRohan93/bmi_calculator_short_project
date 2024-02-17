import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle get kLabelTextStyle => const TextStyle(
        fontSize: 18.0,
        color: Color(0xFF8D8E98),
      );

  static get kValueTextStyle => const TextStyle(
        fontSize: 50.0,
        fontWeight: FontWeight.w900,
      );

  static get kTitleTextStyle => const TextStyle(
        fontSize: 50.0,
        fontWeight: FontWeight.bold,
      );

  static get kResultTextStyle => const TextStyle(
        color: Color(0xFF24D876),
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
      );

  static get kBMITextStyle => const TextStyle(
        fontSize: 100.0,
        fontWeight: FontWeight.bold,
      );

  static get kBodyTextStyle => const TextStyle(
        fontSize: 22.0,
      );

  static int num = -99;
}
