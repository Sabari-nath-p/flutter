import 'package:flutter/material.dart';
import 'package:notes/homeScreen.dart';

void main() {
  runApp(notes());
}

class notes extends StatelessWidget {
  const notes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
