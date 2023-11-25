import 'package:flutter/material.dart';

class MaterialButtonWidget extends StatelessWidget {
  const MaterialButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: MaterialButton(
            onPressed: () {},
            color: Colors.teal,
            minWidth: double.infinity,
            textColor: Colors.white,
            child: const Text("Material")),
      )),
    );
  }
}
