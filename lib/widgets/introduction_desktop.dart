import 'package:flutter/material.dart';
import 'package:cv/theme/cyber_theme.dart';

class IntroductionDesktop extends StatelessWidget {
  const IntroductionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 24),

        SizedBox(height: 24),
        SizedBox(
          width: double.maxFinite,
          child: Text(
            "Hello! I'm Chanketta Kun.",
            style: TextStyle(color: ColorPalette.cyberRichLemon, fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 24),
        Container(
          height: 1,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: ColorPalette.cyberElectricBlue,
        ),
      ],
    );
  }
}
