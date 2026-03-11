import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._(); // prevent instantiation

  // --- Warna Utama ---
  static const Color primaryPurple = Color(0xFF7B2FBE);
  static const Color lightPurple = Color(0xFFAB6FE0);
  static const Color darkPurple = Color(0xFF3D0066);

  // --- Gradient Background ---
  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF3D0066), Color(0xFF7B2FBE), Color(0xFFAB6FE0)],
  );

  // --- Glass Morphism Colors ---
  static const Color glassFill = Color(0x33FFFFFF); // putih 20% opacity
  static const Color glassBorder = Color(0x55FFFFFF); // putih 33% opacity

  // --- Text Styles ---
  static const TextStyle headingStyle = TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.2,
  );

  static const TextStyle subHeadingStyle = TextStyle(
    color: Colors.white70,
    fontSize: 16,
  );

  static const TextStyle counterStyle = TextStyle(
    color: Colors.white,
    fontSize: 64,
    fontWeight: FontWeight.bold,
  );

  // --- MaterialApp ThemeData ---
  static ThemeData get themeData => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: primaryPurple,
    scaffoldBackgroundColor: darkPurple,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.0,
      ),
    ),
  );
}
