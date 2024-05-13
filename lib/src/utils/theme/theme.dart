import 'package:flutter/material.dart';
import 'package:loginapp/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:loginapp/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:loginapp/src/utils/theme/widget_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: CTextTheme.lightTextTheme,
    outlinedButtonTheme: ZOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: ZElevatedButtonTheme.lightElevatedButtonTheme,
    //elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom())
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: CTextTheme.darkTextTheme,
    outlinedButtonTheme: ZOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: ZElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
