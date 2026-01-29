import 'package:flutter/material.dart';
import 'package:cv/data/nav_items.dart';
import 'package:cv/theme/cyber_theme.dart';
import 'package:cv/widgets/site_logo.dart';

class HeaderDesktop extends StatefulWidget {
  final void Function(int index) onNavSelected;
  const HeaderDesktop({super.key, required this.onNavSelected});

  @override
  State<HeaderDesktop> createState() => _HeaderDesktopState();
}

class _HeaderDesktopState extends State<HeaderDesktop> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 75.0,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      width: (screenWidth),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.transparent, ColorPalette.panelColor],
        ),
      ),
      child: Row(
        children: [
          SiteLogo(onTap: () {}),
          Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: TextButton(
                onPressed: () => widget.onNavSelected(i),
                child: Text(
                  navTitles[i],
                  style: TextStyle(
                    color: ColorPalette.cyberRichLemon,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
