import 'package:flutter/material.dart';

class CustomInkwellButton extends StatelessWidget {
  const CustomInkwellButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: const BoxDecoration(
      //     color: Colors.teal,
      //     borderRadius: BorderRadius.all(Radius.circular(50))),
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
      child: InkWell(
        onTap: () {},
        radius: 100,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          child: const Text(
            "Inkwell ",
            style: TextStyle(color: Colors.green, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
