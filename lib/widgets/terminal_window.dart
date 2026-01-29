import 'package:flutter/material.dart';
import 'package:cv/data/project_items.dart';
import 'package:cv/widgets/terminal_body.dart';
import 'package:cv/widgets/terminal_tab_bar.dart';
import 'package:cv/widgets/terminal_title_bar.dart';

class TerminalWindow extends StatefulWidget {
  final ProjectItem project;
  final VoidCallback onWindowClose;

  const TerminalWindow({
    super.key,
    required this.project,
    required this.onWindowClose,
  });

  @override
  State<TerminalWindow> createState() => TerminalWindowState();
}

class TerminalWindowState extends State<TerminalWindow> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF0D1117),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        children: [
          TerminalTitleBar(
            onClose: widget.onWindowClose,
            projectFolder: "${widget.project.projectFolder}.info",
          ),
          TerminalTabBar(project: widget.project),
          Expanded(
            child: TerminalBody(
              project: widget.project,
              projectFolder: "${widget.project.parentFolder}.info",
            ),
          ),
        ],
      ),
    );
  }
}
