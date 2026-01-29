import 'package:flutter/material.dart';

class DraggableTerminal extends StatelessWidget {
  final ValueChanged<Offset> onDrag;
  final Widget window;
  final double width;
  final double height;

  const DraggableTerminal({
    super.key,
    required this.onDrag,
    required this.window,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onPanUpdate: (details) {
          onDrag(details.delta);
        },
        child: window,
      ),
    );
  }
}
