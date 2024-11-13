import 'package:flutter/material.dart';

class AppColors {
  static const darkGrey = Color(0xFF212121);
  static const darkGreen = Color(0xFF1B5E20);
}

class TextStyles {
  static TextStyle title = const TextStyle(
      fontFamily: 'Outfit',
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
      color: AppColors.darkGrey);

  static TextStyle body = const TextStyle(
      fontFamily: 'Outfit',
      fontWeight: FontWeight.normal,
      fontSize: 16.0,
      color: AppColors.darkGrey);
}
