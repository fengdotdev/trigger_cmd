
import 'package:flutter/material.dart';

// inspirated in neon genesis evangelion
class EvaColors {
  static const Color darkBackground = Color(0xFF0F0F23); // Dark background
  static const Color bgSecondary = Color(0xFF1A1A2E); // Dark surface
  static const Color lclOrange = Color(0xFFFF6B00); // LCL Orange
  static const Color lclBright = Color(0xFFFFAA00); // LCL Bright
  static const Color magiCyan = Color(0xFF00CCCC); // MAGI System
  static const Color alertRed = Color(0xFFFF0040); // Alert Red
  static const Color successGreen = Color(0xFF00CC66); // Success Green

  // Colores adicionales para el esquema completo
  static const Color headerGradientStart = Color(0xFFFF0040); // Eva Red
  static const Color headerGradientEnd = Color(0xFF8000FF); // Eva Purple
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFCCCCCC);
  static const Color outline = Color(0xFF333333);

  // 🌈 Gradientes predefinidos
  static const LinearGradient headerGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [headerGradientStart, headerGradientEnd],
  );

  static const LinearGradient lclGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [lclOrange, lclBright],
  );

  static const LinearGradient magiGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [magiCyan, Color(0xFF0099CC)],
  );
}
