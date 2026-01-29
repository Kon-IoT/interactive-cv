import 'package:flutter/material.dart';

class GifBox extends StatelessWidget {
  final String gifPath;
  const GifBox({super.key, required this.gifPath});

  @override
  Widget build(BuildContext context) {
    // final isDesktop = MediaQuery.of(context).size.width > 900;

    return Image.asset(gifPath, fit: BoxFit.cover);
  }
}
