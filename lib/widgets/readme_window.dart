import 'package:flutter/material.dart';
import 'package:cv/data/readme_items.dart';
import 'package:cv/theme/cyber_theme.dart';
import 'package:cv/widgets/readme_body.dart';
import 'package:cv/widgets/readme_title_bar.dart';

class ReadmeWindow extends StatelessWidget {
  final ReadmeItem readmeFile;
  final VoidCallback onWindowClose;
  const ReadmeWindow({
    super.key,
    required this.readmeFile,
    required this.onWindowClose,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorPalette.dustyPink,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        children: [
          ReadmeTitleBar(onClose: onWindowClose),
          Expanded(child: ReadmeBody(readmeFile: readmeFile)),
        ],
      ),
    );
  }
}
