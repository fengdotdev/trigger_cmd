import 'package:flutter/material.dart';


// 🤖 EVANGELION DARK THEME - Inspirado en Neon Genesis Evangelion
class EvaColorsDark {
  static const Color _bgPrimary = Color(0xFF0F0F23); // Dark background
  static const Color _bgSecondary = Color(0xFF1A1A2E); // Dark surface
  static const Color _lclOrange = Color(0xFFFF6B00); // LCL Orange
  static const Color _lclBright = Color(0xFFFFAA00); // LCL Bright
  static const Color _magiCyan = Color(0xFF00CCCC); // MAGI System
  static const Color _alertRed = Color(0xFFFF0040); // Alert Red
  static const Color _successGreen = Color(0xFF00CC66); // Success Green

  // Colores adicionales para el esquema completo
  static const Color _headerGradientStart = Color(0xFFFF0040); // Eva Red
  static const Color _headerGradientEnd = Color(0xFF8000FF); // Eva Purple
  static const Color _textPrimary = Color(0xFFFFFFFF);
  static const Color _textSecondary = Color(0xFFCCCCCC);
  static const Color _outline = Color(0xFF333333);

  // 🌈 Gradientes predefinidos
  static const LinearGradient headerGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [_headerGradientStart, _headerGradientEnd],
  );

  static const LinearGradient lclGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [_lclOrange, _lclBright],
  );

  static const LinearGradient magiGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [_magiCyan, Color(0xFF0099CC)],
  );

  // 🎯 ColorScheme Dark
  static ColorScheme get colorScheme => ColorScheme.dark(
    // Fondos principales
    surface: _bgPrimary,
    surfaceContainerHighest: _bgSecondary,
    surfaceContainer: _bgSecondary,
    surfaceContainerHigh: _bgSecondary,
    surfaceContainerLow: _bgPrimary,

    // Colores primarios (LCL Orange)
    primary: _lclOrange,
    primaryContainer: Color(0xFF4D2200),
    onPrimary: Colors.white,
    onPrimaryContainer: _lclBright,

    // Colores secundarios (LCL Bright)
    secondary: _lclBright,
    secondaryContainer: Color(0xFF4D3300),
    onSecondary: Colors.black,
    onSecondaryContainer: _lclBright,

    // Colores terciarios (MAGI Cyan)
    tertiary: _magiCyan,
    tertiaryContainer: Color(0xFF003333),
    onTertiary: Colors.black,
    onTertiaryContainer: _magiCyan,

    // Estados de error (Alert Red)
    error: _alertRed,
    errorContainer: Color(0xFF4D0013),
    onError: Colors.white,
    onErrorContainer: _alertRed,

    // Colores de superficie
    onSurface: _textPrimary,
    onSurfaceVariant: _textSecondary,

    // Colores adicionales
    outline: _outline,
    outlineVariant: Color(0xFF222222),
    shadow: Colors.black,
    scrim: Colors.black54,

    // Colores de inversión
    inversePrimary: _lclOrange,
    inverseSurface: Colors.white,
    onInverseSurface: _bgPrimary,
  );

  // 🎨 Colores directos para uso personalizado
  static const Color bgPrimary = _bgPrimary;
  static const Color bgSecondary = _bgSecondary;
  static const Color lclOrange = _lclOrange;
  static const Color lclBright = _lclBright;
  static const Color magiCyan = _magiCyan;
  static const Color alertRed = _alertRed;
  static const Color successGreen = _successGreen;
  static const Color textPrimary = _textPrimary;
  static const Color textSecondary = _textSecondary;
  static const Color headerGradientStart = _headerGradientStart;
  static const Color headerGradientEnd = _headerGradientEnd;
}
