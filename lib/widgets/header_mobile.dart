import 'package:flutter/material.dart';
import 'package:cv/data/nav_items.dart';
import 'package:cv/theme/cyber_theme.dart';
import 'package:cv/widgets/site_logo.dart';

class HearderMobile extends StatefulWidget {
  final void Function(int index) onNavSelected;
  const HearderMobile({super.key, required this.onNavSelected});

  @override
  State<HearderMobile> createState() => _HearderMobileState();
}

class _HearderMobileState extends State<HearderMobile> {
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
              child: IconButton(
                onPressed: () => widget.onNavSelected(i),
                icon: Icon(
                  navIcons[i],
                  size: 24,
                  color: ColorPalette.cyberRichLemon,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
