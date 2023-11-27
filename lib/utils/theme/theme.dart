import 'package:ecommerceapp/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/checkBox.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/outlineed_button_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/text_form_field_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._(); // Constructor is private to prevent instantiation
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: AppAppbarTheme.lightAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: AppAppbarTheme.darkAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: AppCheckboxTheme.darkCheckboxTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
  ); // as constuctor is private we have to use static
}
