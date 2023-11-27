import 'package:flutter/material.dart';

class AppOutlinedButtonTheme {
  AppOutlinedButtonTheme._();
  static OutlinedButtonThemeData lightOutlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.black,
      elevation: 0,
      side: const BorderSide(
        color: Colors.blue,
      ),
      textStyle: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );
  static OutlinedButtonThemeData darkOutlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.black,
      elevation: 0,
      side: const BorderSide(
        color: Colors.blue,
      ),
      textStyle: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );
}
