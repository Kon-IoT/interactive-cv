import 'package:flutter/material.dart';
import 'theme/cyber_theme.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const KatExeApp());
}

class KatExeApp extends StatelessWidget {
  const KatExeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: cyberTheme,
      home: const HomePage(),
    );
  }
}
