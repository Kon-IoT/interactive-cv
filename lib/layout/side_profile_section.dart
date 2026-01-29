import 'package:flutter/material.dart';
import 'package:cv/theme/cyber_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class SideProfileSection extends StatelessWidget {
  const SideProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: ColorPalette.ghBackground,
        border: Border(right: BorderSide(color: Colors.white12)),
      ),
      width: screenWidth / 4,
      child: Container(
        padding: const EdgeInsets.all(24),
        height: screenHeight,

        decoration: BoxDecoration(
          color: ColorPalette.ghBackground,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: ColorPalette.ghBorder),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(height: 24),
            Container(
              width: 175,
              height: 175,
              decoration: const BoxDecoration(
                color: ColorPalette.cyberElectricBlue,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/temporary_pfp.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            Text(
              "KUN CHANKETTA",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: ColorPalette.textPrimary,
                fontSize: 20,
              ),
            ),
            Text(
              "Engineering Student  she/her",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: ColorPalette.cyberPaleSilver,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 220,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    ColorPalette.cyberElectricBlue,
                  ),
                ),
                onPressed: () async {
                  final Uri cvUri = Uri.parse(
                    'assets/pdf/chanketta_kun_resume.pdf',
                  );

                  await launchUrl(cvUri, mode: LaunchMode.externalApplication);
                },
                child: Text(
                  "Download Resume",
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorPalette.cyberRaisinBlack,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 220,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.location_on),
                  SizedBox(width: 10),
                  Text("Phnom Penh"),
                ],
              ),
            ),
            SizedBox(
              width: 220,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.schedule),
                  SizedBox(width: 10),
                  Text("UTC + 7"),
                ],
              ),
            ),
            SizedBox(
              width: 220,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.email),
                  SizedBox(width: 10),
                  GestureDetector(
                    child: Text("chankettakun@gmail.com"),
                    onTap: () async {
                      final Uri emailUri = Uri(
                        scheme: 'mailto',
                        path: 'chankettakun@gmail.com',
                        queryParameters: {'subject': 'Hello Ketta'},
                      );

                      await launchUrl(
                        emailUri,
                        mode: LaunchMode.externalApplication,
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 220,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.link),
                  SizedBox(width: 10),
                  GestureDetector(
                    child: Text("https://github.com/Kon-IoT"),
                    onTap: () async {
                      final Uri githubUri = Uri.parse(
                        'https://github.com/Kon-IoT',
                      );

                      if (await canLaunchUrl(githubUri)) {
                        await launchUrl(
                          githubUri,
                          mode: LaunchMode.externalApplication,
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   width: 220,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
            //       Icon(Icons.phone_android),
            //       SizedBox(width: 10),
            //       Text("XXX-XXX-XXX"),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String label;
  const NavItem(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text('▸ $label'),
    );
  }
}
