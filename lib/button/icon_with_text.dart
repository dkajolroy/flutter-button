import 'package:flutter/material.dart';

class IconWithTextButton extends StatelessWidget {
  const IconWithTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.thumb_up),
        style: TextButton.styleFrom(
            fixedSize: const Size(100, 50),
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            backgroundColor: Colors.green[800],
            foregroundColor: Colors.white),
        label: const Text("Like"));
  }
}
