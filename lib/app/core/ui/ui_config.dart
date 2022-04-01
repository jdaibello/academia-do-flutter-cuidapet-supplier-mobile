import 'package:flutter/material.dart';

class UiConfig {
  UiConfig._();

  static ThemeData theme() => ThemeData(
        primaryColor: const Color(0xFFA8CE4B),
        primaryColorDark: const Color(0xFF689f38),
        primaryColorLight: const Color(0xFFDDEDC7),
        accentColor: const Color(0xFF4CAF50),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: const Color(0xFFA8CE4B),
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFA8CE4B),
          foregroundColor: Colors.black,
        ),
      );
}
