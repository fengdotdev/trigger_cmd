import 'package:flutter/material.dart';

// 🌅 EVANGELION LIGHT THEME - Inspirado en Neon Genesis Evangelion
class EvaColorsLight {
  static const Color _bgPrimary = Color(0xFFF5F5F5); // Light background
  static const Color _bgSecondary = Color(0xFFFFFFFF); // Light surface
  static const Color _lclOrange = Color(0xFFFF6B00); // LCL Orange
  static const Color _lclBright = Color(0xFFFFAA00); // LCL Bright
  static const Color _magiCyan = Color(0xFF00CCCC); // MAGI System
  static const Color _alertRed = Color(0xFFFF0040); // Alert Red
  static const Color _successGreen = Color(0xFF00CC66); // Success Green

  // Colores adicionales para el esquema completo
  static const Color _headerGradientStart = Color(0xFFFF6B00); // LCL Orange
  static const Color _headerGradientEnd = Color(0xFFFFAA00); // LCL Bright
  static const Color _textPrimary = Color(0xFF333333);
  static const Color _textSecondary = Color(0xFF666666);
  static const Color _outline = Color(0xFFE0E0E0);

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
    colors: [_magiCyan, Color(0xFF33FFFF)],
  );

  // 🎯 ColorScheme Light
  static ColorScheme get colorScheme => ColorScheme.light(
    // Fondos principales
    surface: _bgPrimary,
    surfaceContainerHighest: _bgSecondary,
    surfaceContainer: _bgSecondary,
    surfaceContainerHigh: Color(0xFFF8F8F8),
    surfaceContainerLow: _bgPrimary,

    // Colores primarios (LCL Orange)
    primary: _lclOrange,
    primaryContainer: Color(0xFFFFE5CC),
    onPrimary: Colors.white,
    onPrimaryContainer: Color(0xFF4D2200),

    // Colores secundarios (LCL Bright)
    secondary: _lclBright,
    secondaryContainer: Color(0xFFFFF5CC),
    onSecondary: Colors.black,
    onSecondaryContainer: Color(0xFF4D3300),

    // Colores terciarios (MAGI Cyan)
    tertiary: _magiCyan,
    tertiaryContainer: Color(0xFFCCFFFF),
    onTertiary: Colors.black,
    onTertiaryContainer: Color(0xFF003333),

    // Estados de error (Alert Red)
    error: _alertRed,
    errorContainer: Color(0xFFFFCCDD),
    onError: Colors.white,
    onErrorContainer: Color(0xFF4D0013),

    // Colores de superficie
    onSurface: _textPrimary,
    onSurfaceVariant: _textSecondary,

    // Colores adicionales
    outline: _outline,
    outlineVariant: Color(0xFFF0F0F0),
    shadow: Colors.grey.shade400,
    scrim: Colors.black54,

    // Colores de inversión
    inversePrimary: Colors.white,
    inverseSurface: _textPrimary,
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
