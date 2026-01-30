import 'package:flutter/material.dart';
import 'package:cv/theme/cyber_theme.dart';
import 'package:cv/widgets/gif_box.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "About Me",
                  style: TextStyle(
                    color: ColorPalette.dustyPink,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),

                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 50),
                Text(
                  "I’m an engineering student and developer interested in IoT, robotics, and systems that connect software with the physical world. I enjoy building projects where code interacts with hardware, sensors, and networks, and where design decisions have real, observable effects beyond the screen. \n\nMy work focuses on embedded systems, robotics, and applied software development. I’ve built projects involving microcontrollers, ROS 2–based robots, vision pipelines, and IoT monitoring systems, with an emphasis on reliability, communication, and system-level thinking. \n\nI like understanding how different layers such as hardware, firmware, networking, and UI—fit together rather than treating them as isolated parts. I also enjoy documenting and explaining technical concepts, as teaching forces me to think clearly and design systems that are easier to understand and maintain. I’m constantly experimenting across disciplines, refining my skills, and building projects that balance technical depth with practical real-world constraints.",
                  style: TextStyle(
                    color: ColorPalette.cyberPaleSilver,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ],
            ),
            SizedBox(height: 75),
            Container(
              padding: EdgeInsets.all(10),
              width: screenWidth / 3,
              height: screenWidth / 3,
              decoration: BoxDecoration(color: ColorPalette.cyberElectricBlue),
              child: GifBox(gifPath: "assets/images/widget2.jpg"),
              // child: GifBox(gifPath: "assets/gif/anime_girl2.gif"),
            ),
          ],
        ),
      
    );
  }
}
