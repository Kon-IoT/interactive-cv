import 'package:flutter/material.dart';
import 'package:cv/data/folder_items.dart';
import 'package:cv/theme/cyber_theme.dart';
import 'package:cv/widgets/file_manager_body.dart';
import 'package:cv/widgets/file_manager_title_bar.dart';

class FileManagerWindow extends StatefulWidget {
  final FolderIcon selectedFolder;
  final void Function(String fileName) onScriptExecuted;
  final VoidCallback onWindowClose;

  const FileManagerWindow({
    super.key,
    required this.selectedFolder,
    required this.onScriptExecuted,
    required this.onWindowClose,
  });

  @override
  State<FileManagerWindow> createState() => FileManagerWindowState();
}

class FileManagerWindowState extends State<FileManagerWindow> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorPalette.ghText,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        children: [
          FileManagerTitleBar(
            selectedFolder: widget.selectedFolder,
            onClose: widget.onWindowClose,
          ),
          Expanded(
            child: FileManagerBody(
              selectedFolderFileList: widget.selectedFolder.folderContent,
              onScriptExecuted: widget.onScriptExecuted,
            ),
          ),
        ],
      ),
    );
  }
}
