import 'package:flutter/material.dart';
import 'package:lindoucv/core/theme/app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    
    // Couleurs principales
    primaryColor: AppColors.primaryLight,
    primaryColorLight: AppColors.primaryVariantLight,
    primaryColorDark: AppColors.primaryVariantLight,
    
    // Couleurs de surface
    scaffoldBackgroundColor: AppColors.backgroundLight,
    cardColor: AppColors.cardLight,
    dialogBackgroundColor: AppColors.surfaceLight,
    
    // ColorScheme complet
    colorScheme: ColorScheme.light(
      primary: AppColors.primaryLight,
      onPrimary: AppColors.textOnPrimaryLight,
      secondary: AppColors.secondaryLight,
      onSecondary: AppColors.textOnPrimaryLight,
      surface: AppColors.surfaceLight,
      onSurface: AppColors.textPrimaryLight,
      background: AppColors.backgroundLight,
      onBackground: AppColors.textPrimaryLight,
      error: AppColors.errorLight,
      onError: AppColors.textOnPrimaryLight,
    ),
    
    // AppBar
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.surfaceLight,
      foregroundColor: AppColors.textPrimaryLight,
      elevation: 0,
      shadowColor: AppColors.shadowLight,
    ),
    
    // TextTheme
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: AppColors.textPrimaryLight,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: AppColors.textPrimaryLight,
        fontSize: 28,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        color: AppColors.textPrimaryLight,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: TextStyle(
        color: AppColors.textPrimaryLight,
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        color: AppColors.textPrimaryLight,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        color: AppColors.textPrimaryLight,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        color: AppColors.textPrimaryLight,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: TextStyle(
        color: AppColors.textPrimaryLight,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        color: AppColors.textSecondaryLight,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      labelLarge: TextStyle(
        color: AppColors.textPrimaryLight,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(
        color: AppColors.textSecondaryLight,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        color: AppColors.textTertiaryLight,
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
    ),
    
    // BottomNavigationBar
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.surfaceLight,
      selectedItemColor: AppColors.primaryLight,
      unselectedItemColor: AppColors.textSecondaryLight,
      selectedIconTheme: IconThemeData(color: AppColors.primaryLight),
      unselectedIconTheme: IconThemeData(color: AppColors.textSecondaryLight),
      selectedLabelStyle: TextStyle(color: AppColors.primaryLight),
      unselectedLabelStyle: TextStyle(color: AppColors.textSecondaryLight),
      elevation: 8,
      type: BottomNavigationBarType.fixed,
    ),
    
    // Card
    cardTheme: CardThemeData(
      color: AppColors.cardLight,
      elevation: 2,
      shadowColor: AppColors.shadowLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    
    // ElevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.ctaLight,
        foregroundColor: AppColors.textOnPrimaryLight,
        elevation: 2,
        shadowColor: AppColors.shadowLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    
    // OutlinedButton
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primaryLight,
        side: BorderSide(color: AppColors.primaryLight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    
    // TextButton
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryLight,
      ),
    ),
    
    // Divider
    dividerTheme: DividerThemeData(
      color: AppColors.dividerLight,
      thickness: 1,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    
    // Couleurs principales
    primaryColor: AppColors.primaryDark,
    primaryColorLight: AppColors.primaryVariantDark,
    primaryColorDark: AppColors.primaryVariantDark,
    
    // Couleurs de surface
    scaffoldBackgroundColor: AppColors.backgroundDark,
    cardColor: AppColors.cardDark,
    dialogBackgroundColor: AppColors.surfaceDark,
    
    // ColorScheme complet
    colorScheme: ColorScheme.dark(
      primary: AppColors.primaryDark,
      onPrimary: AppColors.textOnPrimaryDark,
      secondary: AppColors.secondaryDark,
      onSecondary: AppColors.textOnPrimaryDark,
      surface: AppColors.surfaceDark,
      onSurface: AppColors.textPrimaryDark,
      background: AppColors.backgroundDark,
      onBackground: AppColors.textPrimaryDark,
      error: AppColors.errorDark,
      onError: AppColors.textOnPrimaryDark,
    ),
    
    // AppBar
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.surfaceDark,
      foregroundColor: AppColors.textPrimaryDark,
      elevation: 0,
      shadowColor: AppColors.shadowDark,
    ),
    
    // TextTheme
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: AppColors.textPrimaryDark,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: AppColors.textPrimaryDark,
        fontSize: 28,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        color: AppColors.textPrimaryDark,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: TextStyle(
        color: AppColors.textPrimaryDark,
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        color: AppColors.textPrimaryDark,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        color: AppColors.textPrimaryDark,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        color: AppColors.textPrimaryDark,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: TextStyle(
        color: AppColors.textPrimaryDark,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        color: AppColors.textSecondaryDark,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      labelLarge: TextStyle(
        color: AppColors.textPrimaryDark,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(
        color: AppColors.textSecondaryDark,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        color: AppColors.textTertiaryDark,
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
    ),
    
    // BottomNavigationBar
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.surfaceDark,
      selectedItemColor: AppColors.primaryDark,
      unselectedItemColor: AppColors.textSecondaryDark,
      selectedIconTheme: IconThemeData(color: AppColors.primaryDark),
      unselectedIconTheme: IconThemeData(color: AppColors.textSecondaryDark),
      selectedLabelStyle: TextStyle(color: AppColors.primaryDark),
      unselectedLabelStyle: TextStyle(color: AppColors.textSecondaryDark),
      elevation: 8,
      type: BottomNavigationBarType.fixed,
    ),
    
    // Card
    cardTheme: CardThemeData(
      color: AppColors.cardDark,
      elevation: 2,
      shadowColor: AppColors.shadowDark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    
    // ElevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.ctaDark,
        foregroundColor: AppColors.textOnPrimaryDark,
        elevation: 2,
        shadowColor: AppColors.shadowDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    
    // OutlinedButton
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primaryDark,
        side: BorderSide(color: AppColors.primaryDark),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    
    // TextButton
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryDark,
      ),
    ),
    
    // Divider
    dividerTheme: DividerThemeData(
      color: AppColors.dividerDark,
      thickness: 1,
    ),
  );
}
