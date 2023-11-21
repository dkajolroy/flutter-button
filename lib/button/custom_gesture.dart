import 'package:flutter/material.dart';

class CustomGestureButton extends StatelessWidget {
  const CustomGestureButton({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: Colors.grey[600],
        padding: const EdgeInsets.all(20),
        child: const Text("Gesture Tab", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
