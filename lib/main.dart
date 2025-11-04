import 'package:flutter/material.dart';
import 'changer_container.dart';

void main() {
  runApp(const ColorChangerApp());
}

class ColorChangerApp extends StatelessWidget {
  const ColorChangerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: ChangerContainer()));
  }
}
