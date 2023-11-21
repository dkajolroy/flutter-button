import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        color: Colors.teal, onPressed: () {}, icon: const Icon(Icons.home));
  }
}
