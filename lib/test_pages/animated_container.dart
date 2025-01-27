import 'package:flutter/material.dart';

class CustomAnimatedContainer extends StatefulWidget {
  const CustomAnimatedContainer({super.key});

  @override
  State<CustomAnimatedContainer> createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
  double boxHeight = 100;
  double boxWidth = 100;
  void _expandedBox() {
    setState(() {
      boxHeight = 300;
      boxWidth = 300;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _expandedBox,
      child: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: 100,
            width: 100,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
