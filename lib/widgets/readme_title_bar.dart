import 'package:flutter/material.dart';
import 'package:cv/theme/cyber_theme.dart';

class ReadmeTitleBar extends StatelessWidget {
  final VoidCallback onClose;
  const ReadmeTitleBar({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const BoxDecoration(
        color: ColorPalette.textPrimary,
        border: Border(bottom: BorderSide(color: ColorPalette.cyberPaleSilver)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const WindowDot(color: Color(0xFFED6A5E)),
              const SizedBox(width: 6),
              const WindowDot(color: Color(0xFFF4BF4F)),
              const SizedBox(width: 6),
              const WindowDot(color: Color(0xFF61C554)),
            ],
          ),
          Text(
            'README.md',
            style: const TextStyle(
              fontSize: 10,
              color: ColorPalette.cyberRaisinBlack,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: onClose,
                icon: Icon(
                  Icons.close,
                  size: 16,
                  color: ColorPalette.cyberRaisinBlack,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WindowDot extends StatelessWidget {
  final Color color;
  const WindowDot({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
