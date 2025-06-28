import 'package:flutter/material.dart';
import 'package:lindoucv/theme/app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColorLight: AppColors.primaryLight,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    // colorScheme: ColorScheme(brightness:AppColors.primaryLight, primary: primary, onPrimary: onPrimary, secondary: secondary, onSecondary: onSecondary, error: error, onError: onError, surface: surface, onSurface: onSurface),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.appbarLight,
      foregroundColor: AppColors.textLight,
    ),
    textTheme: TextTheme(bodyMedium: TextStyle(color: AppColors.textLight)),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColorDark: AppColors.primaryDark,
    primaryColorLight: AppColors.primaryDark,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    appBarTheme: AppBarTheme(
      backgroundColor: Color.fromARGB(255, 13, 13, 13),
      foregroundColor: AppColors.textDark,
    ),
    textTheme: TextTheme(bodyMedium: TextStyle(color: AppColors.textDark)),
  );
}
