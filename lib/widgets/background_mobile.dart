import 'package:flutter/material.dart';
import 'package:cv/data/association_items.dart';
import 'package:cv/theme/cyber_theme.dart';

class BackgroundMobile extends StatelessWidget {
  const BackgroundMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(75),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Background",
            style: TextStyle(
              color: ColorPalette.dustyPink,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 32),

          Text(
            """🏫 Institute of Technology of Cambodia: Phnom Penh: Currently a 4th year undergraduate engineering student 
                              
📡 Department of Network & Telecommunications Engineering: Academic focus on embedded systems, networking principles, and system-level design.

⚙️ Dynamics & Control Lab: Active member of the lab’s ABU Robocon team, contributing to robotics projects.

🛠️ Digital-Control Fabrication Lab: Collaborated for six months on a large-scale IoT project.

🚀 Camfly Tech: Software Developer Intern (3 months, ended in October 2025) at a drone startup company.

🤖 ABU ROBOCON 2025: Software Member of Team ITC02, which achieved National Champion status and earned the Best Engineering Award at the international level.

🏆 ABU ROBOCON 2026: Actively working with Team ITC02 again as their computer vision lead to prepare for ABU ROBOCON 2026. """,
            style: TextStyle(
              fontSize: 16,
              color: ColorPalette.cyberPaleSilver,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 40),

          Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: [
              for (final item in associationItems)
                AssociationCard(title: item["title"], img: item["img"]),
            ],
          ),
        ],
      ),
    );
  }
}

Widget AssociationCard({required String title, required String img}) {
  return Container(
    width: 260, // controls wrapping behavior
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: ColorPalette.ghBackground.withOpacity(0.6),
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: ColorPalette.cyberElectricBlue),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(img, width: 80, height: 80, fit: BoxFit.contain),
        const SizedBox(height: 12),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: ColorPalette.cyberRichLemon),
        ),
      ],
    ),
  );
}
