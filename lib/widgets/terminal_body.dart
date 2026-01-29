import 'package:flutter/material.dart';
import 'package:cv/data/project_items.dart';
import 'package:cv/theme/cyber_theme.dart';

class TerminalBody extends StatelessWidget {
  final ProjectItem project;
  final String projectFolder;
  // final int interestValue;
  // final int experienceValue;

  const TerminalBody({
    super.key,
    required this.project,
    required this.projectFolder,
  });

  static const _mono = TextStyle(
    fontFamily: 'JetBrainsMono',
    fontSize: 14,
    height: 1.6,
    color: Color(0xFFE6EDF3),
  );

  static const _promptUser = TextStyle(
    fontFamily: 'JetBrainsMono',
    fontSize: 14,
    color: Color(0xFF37EBF3),
  );

  static const _promptPath = TextStyle(
    fontFamily: 'JetBrainsMono',
    fontSize: 14,
    color: Color(0xFF7D8590),
  );

  static const _label = TextStyle(
    fontFamily: 'JetBrainsMono',
    fontSize: 14,
    color: Color(0xFF37EBF3),
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _promptLine('cat project_${project.projectFolder}.info'),
          const SizedBox(height: 12),
          _row('PROJECT', project.title),
          _row('OVERVIEW', project.overview, multiline: true),
          _row('STACK', project.tools),
          _row('STATUS', project.status),
          if (project.repoLink != null && project.repoLink!.isNotEmpty)
            _row('REPO', project.repoLink!),
        ],
      ),
    );
  }

  Widget _promptLine(String command) {
    return RichText(
      text: TextSpan(
        style: _mono,
        children: [
          const TextSpan(text: 'kat@portfolio', style: _promptUser),
          TextSpan(text: ':~/${project.parentFolder}/', style: _promptPath),
          const TextSpan(text: r'$ '),
          TextSpan(text: command),
        ],
      ),
    );
  }

  Widget _row(String label, String value, {bool multiline = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: multiline
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          SizedBox(width: 110, child: Text('$label :', style: _label)),
          Expanded(child: Text(value, style: _mono)),
        ],
      ),
    );
  }
}

String asciiBar(int value, int max) {
  final filled = "█" * value;
  final empty = "----" * (max - value);
  return "[$filled$empty]";
}

Widget terminalAsciiStat({
  required String label,
  required int value,
  required int max,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 6),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 110,
          child: Text('$label :', style: TerminalBody._label),
        ),
        Text(
          asciiBar(value, max),
          style: const TextStyle(
            fontFamily: 'JetBrainsMono',
            fontSize: 14,
            height: 1.6,
            color: ColorPalette.cyberSteelPink,
          ),
        ),
      ],
    ),
  );
}
