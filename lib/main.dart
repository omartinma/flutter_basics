import 'package:flutter/material.dart';
import 'package:flutter_basics/sample_app/sample_app_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SampleAppScreen(),
    );
  }
}
