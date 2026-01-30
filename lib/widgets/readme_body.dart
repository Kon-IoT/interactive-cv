import 'package:flutter/material.dart';
import 'package:cv/data/readme_items.dart';

class ReadmeBody extends StatelessWidget {
  final ReadmeItem readmeFile;
  const ReadmeBody({super.key, required this.readmeFile});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(readmeFile.description, style: TextStyle(fontSize: 12)),
          SizedBox(height: 24),
          Row(
            children: [
              for (int i = 0; i < readmeFile.stacks.length; i++)
                Row(
                  children: [
                    Image.asset(readmeFile.stacks[i], width: 50, height: 50),
                    SizedBox(width: 24),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
