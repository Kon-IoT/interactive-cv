import 'package:flutter/material.dart';
import 'package:cv/data/skill_items.dart';
import 'package:cv/theme/cyber_theme.dart';

class StacksDesktop extends StatelessWidget {
  const StacksDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(75),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Languages and Tools I've worked with",
            style: TextStyle(
              color: ColorPalette.dustyPink,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 32),

          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 12,
                runSpacing: 12,
                children: [
                  for (final item in stackIconItems)
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(item["img"], width: 48, height: 48),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
