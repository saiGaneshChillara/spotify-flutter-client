import 'package:flutter/material.dart';
import 'package:myapp/core/theme/app_pallete.dart';

class AppTheme {

  static OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderSide: BorderSide(
      color: color,
      width: 3,
    ),
    borderRadius: BorderRadius.circular(10),
  );

  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Pallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      focusedBorder: _border(Pallete.gradient1),
      enabledBorder: _border(Pallete.borderColor),
    ),
  );
}