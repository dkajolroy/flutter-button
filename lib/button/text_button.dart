import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            alignment: Alignment.center,
            elevation: 5,
            fixedSize: const Size(200, 50),
            side: BorderSide(
              width: 2,
              color: (Colors.teal[900])!,
            ),
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)))),
        child: const Text(
          "Text",
        ));
  }
}
