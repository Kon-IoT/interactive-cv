import 'package:flutter/material.dart';
import 'package:cv/theme/cyber_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class TopProfileSection extends StatelessWidget {
  const TopProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: ColorPalette.ghBackground,
        border: Border(bottom: BorderSide(color: Colors.white12)),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 420),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 16),

                // Avatar
                Container(
                  width: 180,
                  height: 180,
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

                const SizedBox(height: 20),

                Text(
                  "KUN CHANKETTA",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: ColorPalette.textPrimary,
                  ),
                ),

                Text(
                  "Engineering Student · she/her",
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorPalette.cyberPaleSilver,
                  ),
                ),

                const SizedBox(height: 16),

                // Resume Button
                SizedBox(
                  width: 250,
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
                        color: ColorPalette.cyberRaisinBlack,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                _infoRow(Icons.location_on, "Phnom Penh"),
                _infoRow(Icons.schedule, "UTC +7"),
                _emailRow(),
                _linkRow(),

                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _infoRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [Icon(icon, size: 18), const SizedBox(width: 10), Text(text)],
      ),
    );
  }

  Widget _emailRow() {
    return _linkBase(
      icon: Icons.email,
      label: "chankettakun@gmail.com",
      uri: Uri(
        scheme: 'mailto',
        path: 'chankettakun@gmail.com',
        queryParameters: {'subject': 'Hello Ketta'},
      ),
    );
  }

  Widget _linkRow() {
    return _linkBase(
      icon: Icons.link,
      label: "github.com/Kon-IoT",
      uri: Uri.parse("https://github.com/Kon-IoT"),
    );
  }

  Widget _linkBase({
    required IconData icon,
    required String label,
    required Uri uri,
  }) {
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
