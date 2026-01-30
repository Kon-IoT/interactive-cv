import 'package:flutter/material.dart';
import 'package:cv/theme/cyber_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class SideProfileSection extends StatelessWidget {
  const SideProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.25,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: ColorPalette.ghBackground,
        border: const Border(right: BorderSide(color: Colors.white12)),
      ),

      child: Align(
        alignment: AlignmentGeometry.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: 1000),
          child: Container(
            width: screenWidth * 0.25,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: ColorPalette.ghBackground,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: ColorPalette.ghBorder),
            ),

            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 12),

                  // Avatar
                  Container(
                    width: 160,
                    height: 160,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorPalette.cyberElectricBlue,
                    ),
                    padding: const EdgeInsets.all(5),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/temporary_pfp.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 18),

                  Text(
                    "KUN CHANKETTA",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: ColorPalette.textPrimary,
                    ),
                  ),

                  Text(
                    "Engineering Student · she/her",
                    style: TextStyle(
                      fontSize: 15,
                      color: ColorPalette.cyberPaleSilver,
                    ),
                  ),

                  const SizedBox(height: 16),

                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorPalette.cyberElectricBlue,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                      onPressed: () async {
                        final uri = Uri.parse(
                          'https://raw.githubusercontent.com/Kon-IoT/interactive-cv/main/assets/pdf/chanketta_kun_resume.pdf',
                        );
                        await launchUrl(
                          uri,
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      child: Text(
                        "Download Resume",
                        style: TextStyle(
                          fontSize: 15,
                          color: ColorPalette.cyberRaisinBlack,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 18),

                  SizedBox(
                    width: 200,
                    child: _info(Icons.location_on, "Phnom Penh"),
                  ),
                  SizedBox(width: 200, child: _info(Icons.schedule, "UTC +7")),
                  SizedBox(
                    width: 200,
                    child: _link(
                      Icons.email,
                      "chankettakun@gmail.com",
                      Uri(
                        scheme: 'mailto',
                        path: 'chankettakun@gmail.com',
                        queryParameters: {'subject': 'Hello Ketta'},
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: _link(
                      Icons.link,
                      "github.com/Kon-IoT",
                      Uri.parse("https://github.com/Kon-IoT"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _info(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [Icon(icon, size: 18), const SizedBox(width: 10), Text(text)],
      ),
    );
  }

  Widget _link(IconData icon, String label, Uri uri) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: GestureDetector(
        onTap: () => launchUrl(uri, mode: LaunchMode.externalApplication),
        child: Row(
          children: [
            Icon(icon, size: 18),
            const SizedBox(width: 10),
            Flexible(child: Text(label, overflow: TextOverflow.ellipsis)),
          ],
        ),
      ),
    );
  }
}
