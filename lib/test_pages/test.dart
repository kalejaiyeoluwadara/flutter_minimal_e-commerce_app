import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            height: 100,
            width: 100,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
