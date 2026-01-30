import 'package:flutter/material.dart';
import 'package:cv/data/folder_items.dart';
import 'package:cv/theme/cyber_theme.dart';

class FileManagerTitleBar extends StatelessWidget {
  final FolderIcon selectedFolder;
  final VoidCallback onClose;
  const FileManagerTitleBar({
    super.key,
    required this.selectedFolder,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const BoxDecoration(
        color: ColorPalette.cyberElectricBlue,
        border: Border(bottom: BorderSide(color: Colors.white12)),
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
            'kat@portfolio:~${selectedFolder.folderTitle}/',
            style: const TextStyle(
              fontSize: 9,
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
