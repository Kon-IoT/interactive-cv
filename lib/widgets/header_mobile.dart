import 'package:flutter/material.dart';
import 'package:cv/data/nav_items.dart';
import 'package:cv/theme/cyber_theme.dart';
import 'package:cv/widgets/site_logo.dart';

class HearderMobile extends StatelessWidget {
  final void Function(int index) onNavSelected;
  const HearderMobile({super.key, required this.onNavSelected});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 12 : 20,
        vertical: isMobile ? 6 : 10,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.transparent, ColorPalette.panelColor],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SiteLogo(onTap: () {}),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < navTitles.length; i++)
                Padding(
                  padding: EdgeInsets.only(left: isMobile ? 4 : 8),
                  child: IconButton(
                    padding: EdgeInsets.all(isMobile ? 4 : 8),
                    constraints: BoxConstraints(
                      minWidth: isMobile ? 32 : 40,
                      minHeight: isMobile ? 32 : 40,
                    ),
                    onPressed: () => onNavSelected(i),
                    icon: Icon(
                      navIcons[i],
                      size: isMobile ? 20 : 24,
                      color: ColorPalette.cyberRichLemon,
                    ),
                    tooltip: navTitles[i], // Nice touch for accessibility
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
