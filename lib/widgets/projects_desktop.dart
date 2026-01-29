import 'package:flutter/material.dart';
import 'package:cv/theme/cyber_theme.dart';

class ProjectsDesktop extends StatelessWidget {
  const ProjectsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100),
        SizedBox(
          width: double.maxFinite,
          child: Text(
            "Projects I'm Proud of",
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
        SizedBox(height: 75),
      ],
    );
  }
}
