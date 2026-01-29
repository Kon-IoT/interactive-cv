import 'package:flutter/material.dart';
import 'package:cv/data/project_items.dart';
import 'package:cv/theme/cyber_theme.dart';

class TerminalTabBar extends StatelessWidget {
  final ProjectItem project;

  const TerminalTabBar({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.white12)),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.cyanAccent, width: 2),
          ),
        ),
        child: Text(
          "${project.parentFolder}/",
          style: TextStyle(fontSize: 14, color: ColorPalette.textPrimary),
        ),
      ),
    );
  }
}
