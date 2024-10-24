import 'package:demo/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _borderTheme([Color color = Colors.grey]) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: color,
          width: 1.5,
        ),
      );
  static final ThemeData appTheme = ThemeData.dark(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(15),
      enabledBorder: _borderTheme(),
      disabledBorder: _borderTheme(),
      focusedBorder: _borderTheme(AppColors.purpleColor),
      border: _borderTheme(),
      errorBorder: _borderTheme(),
    ),
  );
}
