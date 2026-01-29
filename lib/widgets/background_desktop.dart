import 'package:flutter/material.dart';
import 'package:cv/data/association_items.dart';
import 'package:cv/theme/cyber_theme.dart';

class BackgroundDesktop extends StatelessWidget {
  const BackgroundDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 1000),
      child: Padding(
        padding: const EdgeInsets.all(75.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Text(
                "Background",
                style: TextStyle(
                  color: ColorPalette.dustyPink,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 75),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    style: TextStyle(
                      fontSize: 16,
                      color: ColorPalette.cyberPaleSilver,
                    ),
                    textAlign: TextAlign.start,
                    softWrap: true,
                    """🏫 Institute of Technology of Cambodia: Phnom Penh: Currently a 4th year undergraduate engineering student 
                              
📡 Department of Network & Telecommunications Engineering: Academic focus on embedded systems, networking principles, and system-level design.

⚙️ Dynamics & Control Lab: Active member of the lab’s ABU Robocon team, contributing to robotics projects.

🛠️ Digital-Control Fabrication Lab: Collaborated for six months on a large-scale IoT project.

🚀 Camfly Tech: Software Developer Intern (3 months, ended in October 2025) at a drone startup company.

🤖 ABU ROBOCON 2025: Software Member of Team ITC02, which achieved National Champion status and earned the Best Engineering Award at the international level.

🏆 ABU ROBOCON 2026: Actively working with Team ITC02 again as their computer vision lead to prepare for ABU ROBOCON 2026. """,
                  ),
                ),
                SizedBox(width: 75),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 500),
                  child: Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.center,
                    children: [
                      for (int i = 0; i < associationItems.length; i++)
                        Image.asset(
                          associationItems[i]["img"],
                          width: 135,
                          height: 135,
                        ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
