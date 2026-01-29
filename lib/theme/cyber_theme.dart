import 'package:flutter/material.dart';

class ColorPalette {
  static const bgColor = Color(0xFF0D1117);
  static const panelColor = Color(0xFF161B22);
  static const borderColor = Color(0xFF30363D);
  static const textPrimary = Color(0xFFE6EDF3);
  static const textMuted = Color(0xFF7D8590);

  // Cyberpunk Accents
  static const cyberBloodRed = Color(0xFF710000);
  static const cyberRichLemon = Color(0xFFFDF500);
  static const cyberSeaGreen = Color(0xFF1AC5B0);
  static const cyberElectricBlue = Color(0xFF37EBF3);
  static const cyberPurple = Color(0xFF9370DB);
  static const cyberFrostbite = Color(0xFFE455AE);
  static const cyberSteelPink = Color(0xFFCB1DCD);
  static const cyberPaleSilver = Color(0xFFD1C5C0);
  static const cyberRaisinBlack = Color(0xFF272932);

  // GitHub Base
  static const ghBackground = Color(0xFF0D1117);
  static const ghCard = Color(0xFF161B22);
  static const ghBorder = Color(0xFF30363D);
  static const ghText = Color(0xFFE6EDF3);
  static const ghMuted = Color(0xFF7D8590);

  static const dustyPink = Color(0xFFE57391);
}

final ThemeData cyberTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: ColorPalette.bgColor,
  fontFamily: 'JetBrainsMono',
  cardColor: ColorPalette.panelColor,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: ColorPalette.textPrimary),
    bodySmall: TextStyle(color: ColorPalette.textMuted),
  ),
);
