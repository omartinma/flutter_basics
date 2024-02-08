import 'package:flutter/material.dart';
import 'package:ie_workshop/basics/basics_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BasicScreenView(),
    );
  }
}
