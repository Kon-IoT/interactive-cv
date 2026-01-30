import 'package:flutter/material.dart';
import 'package:cv/theme/cyber_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMeMobile extends StatelessWidget {
  const ContactMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Contact me",
              style: TextStyle(
                color: ColorPalette.dustyPink,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
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
                  child: Image.asset(
                    "assets/images/github.png",
                    width: 50,
                    height: 50,
                  ),
                ),
                SizedBox(width: 24),
                GestureDetector(
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
                  child: Image.asset(
                    "assets/images/gmail.png",
                    width: 50,
                    height: 50,
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
