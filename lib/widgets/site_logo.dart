import 'package:flutter/material.dart';
import 'package:cv/theme/cyber_theme.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        "Kon-IoT",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          decoration: TextDecoration.underline,
          color: ColorPalette.cyberRichLemon,
        ),
      ),
    );
  }
}
