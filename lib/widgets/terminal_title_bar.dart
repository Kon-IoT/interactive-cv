import 'package:flutter/material.dart';

class TerminalTitleBar extends StatelessWidget {
  final String projectFolder;
  final VoidCallback onClose;
  const TerminalTitleBar({
    super.key,
    required this.projectFolder,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const BoxDecoration(
        color: Color(0xFF161B22),
        border: Border(bottom: BorderSide(color: Colors.white12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const WindowDot(color: Color(0xFFED6A5E)),
          const SizedBox(width: 6),
          const WindowDot(color: Color(0xFFF4BF4F)),
          const SizedBox(width: 6),
          const WindowDot(color: Color(0xFF61C554)),
          const SizedBox(width: 12),
          const Icon(Icons.terminal, size: 16, color: Colors.white70),
          const SizedBox(width: 6),
          Text(
            'kat@portfolio:~$projectFolder/',
            style: const TextStyle(fontSize: 10, color: Colors.white70),
          ),
          Row(
            children: [
              // const SizedBox(width: 12),
              // const Icon(Icons.minimize, size: 16, color: Colors.white70),
              // const SizedBox(width: 12),
              // const Icon(Icons.crop_square, size: 16, color: Colors.white70),
              IconButton(
                onPressed: onClose,
                icon: Icon(Icons.close, size: 16, color: Colors.white70),
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
