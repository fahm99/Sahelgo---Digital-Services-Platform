import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primary = Color(0xFF8c4a00);
  static const Color primaryFixed = Color(0xFFfd8b00);
  static const Color secondary = Color(0xFF4953ac);
  static const Color tertiary = Color(0xFF815100);
  static const Color error = Color(0xFFb02500);
  static const Color surface = Color(0xFFf6f6f6);
  static const Color onSurface = Color(0xFF2d2f2f);
  static const Color outline = Color(0xFF767777);
  static const Color surfaceContainerLowest = Color(0xFFffffff);
  static const Color surfaceContainerLow = Color(0xFFf0f1f1);
  static const Color surfaceContainer = Color(0xFFe7e8e8);
  static const Color surfaceContainerHigh = Color(0xFFe1e3e3);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: primary,
      scaffoldBackgroundColor: surface,
      colorScheme: const ColorScheme.light(
        primary: primary,
        secondary: secondary,
        tertiary: tertiary,
        error: error,
        surface: surface,
        onSurface: onSurface,
      ),
      textTheme: GoogleFonts.tajawalTextTheme(
        const TextTheme(
          displayLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: onSurface,
          ),
          displayMedium: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: onSurface,
          ),
          headlineSmall: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: onSurface,
          ),
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: onSurface,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            color: onSurface,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            color: onSurface,
          ),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white.withOpacity(0.8),
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.plusJakartaSans(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: primary,
        ),
      ),
      cardTheme: CardTheme(
        color: surfaceContainerLowest,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceContainerHigh,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: primaryFixed,
      scaffoldBackgroundColor: const Color(0xFF121212),
      colorScheme: const ColorScheme.dark(
        primary: primaryFixed,
        secondary: secondary,
        tertiary: tertiary,
        error: error,
        surface: Color(0xFF1e1e1e),
        onSurface: Color(0xFFffffff),
      ),
    );
  }
}
