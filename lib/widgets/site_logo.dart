import 'package:flutter/material.dart';
import 'package:cv/theme/cyber_theme.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final fontSize = constraints.maxHeight > 0
              ? (constraints.maxHeight * 0.6).clamp(12.0, 22.0)
              : 22.0;

          return Text(
            "Kon-IoT",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
              decoration: TextDecoration.underline,
              color: ColorPalette.cyberRichLemon,
            ),
          );
        },
      ),
    );
  }
}
