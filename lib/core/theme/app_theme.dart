import 'package:flutter/material.dart';
import 'package:lindoucv/core/theme/app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColorLight: AppColors.primaryLight,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    primaryColor: AppColors.primary,

    // colorScheme: ColorScheme(brightness:AppColors.primaryLight, primary: primary, onPrimary: onPrimary, secondary: secondary, onSecondary: onSecondary, error: error, onError: onError, surface: surface, onSurface: onSurface),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.appbarLight,
      foregroundColor: AppColors.textLight,
    ),
    textTheme: TextTheme(bodyMedium: TextStyle(color: AppColors.textLight)),
    dialogBackgroundColor: AppColors.circleavatarDark,

    //bottom naviation bar theme
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.backgroundLight,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.textLight,
      selectedIconTheme: IconThemeData(color: AppColors.primary),
      unselectedIconTheme: IconThemeData(color: AppColors.textLight),
      selectedLabelStyle: TextStyle(color: AppColors.primary),
      unselectedLabelStyle: TextStyle(color: AppColors.textLight),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColorDark: AppColors.primaryDark,
    primaryColorLight: AppColors.primaryDark,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    primaryColor: AppColors.primaryD,
    appBarTheme: AppBarTheme(
      backgroundColor: Color.fromARGB(255, 13, 13, 13),
      foregroundColor: AppColors.textDark,
    ),
    textTheme: TextTheme(bodyMedium: TextStyle(color: AppColors.textDark)),
    dialogBackgroundColor: AppColors.circleavatarDark,
  );
}
