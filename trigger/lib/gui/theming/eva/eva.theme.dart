import 'package:flutter/material.dart';
import 'package:trigger/gui/theming/eva/eva.dark.dart';
import 'package:trigger/gui/theming/eva/eva.light.dart';

// 🎭 EVANGELION THEME MANAGER
class EvangelionTheme {
  // 🌙 Tema Oscuro Completo
  static ThemeData get darkTheme => ThemeData(
    colorScheme: EvaColorsDark.colorScheme,
    useMaterial3: true,
    fontFamily: 'RobotoMono',

    // AppBar personalizada
    appBarTheme: AppBarTheme(
      backgroundColor: EvaColorsDark.bgSecondary,
      foregroundColor: EvaColorsDark.textPrimary,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: EvaColorsDark.lclBright,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
    ),

    // Botones personalizados
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: EvaColorsDark.lclOrange,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),

    // Cards personalizadas
    cardTheme: CardThemeData(
      color: EvaColorsDark.bgSecondary,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Color(0xFF333333), width: 0.5),
      ),
    ),

    // Input decoration personalizada
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFF2A2A3E),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Color(0xFF333333)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: EvaColorsDark.lclOrange, width: 2),
      ),
      labelStyle: TextStyle(color: EvaColorsDark.lclBright),
      hintStyle: TextStyle(color: EvaColorsDark.textSecondary),
    ),
  );

  // 🌅 Tema Claro Completo
  static ThemeData get lightTheme => ThemeData(
    colorScheme: EvaColorsLight.colorScheme,
    useMaterial3: true,
    fontFamily: 'RobotoMono',

    // AppBar personalizada
    appBarTheme: AppBarTheme(
      backgroundColor: EvaColorsLight.bgSecondary,
      foregroundColor: EvaColorsLight.textPrimary,
      elevation: 1,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: EvaColorsLight.lclOrange,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
    ),

    // Botones personalizados
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: EvaColorsLight.lclOrange,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),

    // Cards personalizadas
    cardTheme: CardThemeData(
      color: EvaColorsLight.bgSecondary,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Color(0xFFE0E0E0), width: 0.5),
      ),
    ),

    // Input decoration personalizada
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Color(0xFFE0E0E0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: EvaColorsLight.lclOrange, width: 2),
      ),
      labelStyle: TextStyle(color: EvaColorsLight.textSecondary),
      hintStyle: TextStyle(color: Color(0xFF999999)),
    ),
  );
}
