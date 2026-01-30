import 'package:flutter/material.dart';
import 'package:cv/data/file_list_items.dart';
import 'package:cv/theme/cyber_theme.dart';

class FileManagerBody extends StatelessWidget {
  final FileListItem selectedFolderFileList;
  final void Function(String fileName) onScriptExecuted;

  const FileManagerBody({
    super.key,
    required this.selectedFolderFileList,
    required this.onScriptExecuted,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final file in selectedFolderFileList.folderContent)
            InkWell(
              onTap: () => onScriptExecuted(file),
              borderRadius: BorderRadius.circular(6),
              hoverColor: Colors.white12,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 8,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/script.png",
                      width: 32,
                      height: 32,
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Text(
                        file,
                        style: const TextStyle(
                          fontSize: 12,
                          height: 1.3,
                          color: ColorPalette.cyberRaisinBlack,
                        ),
                        overflow: TextOverflow.ellipsis,
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
