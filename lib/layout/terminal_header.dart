import 'package:flutter/material.dart';

class TerminalHeader extends StatelessWidget {
  const TerminalHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.white12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '> ketta@portfolio:~\$ ./boot --mode=chaos',
            style: TextStyle(color: Color(0xFF37EBF3)),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 16,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.minimize, size: 16),
                SizedBox(width: 16),
                Icon(Icons.close, size: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
