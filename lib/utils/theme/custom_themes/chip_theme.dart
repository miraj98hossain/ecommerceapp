import 'package:flutter/material.dart';

class AppChipTheme {
  AppChipTheme._();
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    selectedColor: Colors.blue,
    checkmarkColor: Colors.white,
    labelStyle: const TextStyle(color: Colors.black),
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
  );
  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    selectedColor: Colors.blue,
    checkmarkColor: Colors.white,
    labelStyle: const TextStyle(color: Colors.black),
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
  );
}
