import 'package:flutter/material.dart';
import 'package:session/button/custom_gesture.dart';
import 'package:session/button/custom_inkwell.dart';
import 'package:session/button/elevated_button.dart';
import 'package:session/button/floating_button.dart';
import 'package:session/button/icon_button.dart';
import 'package:session/button/icon_with_text.dart';
import 'package:session/button/outline_button.dart';
import 'package:session/button/text_button.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButtonWidget(),
            IconWithTextButton(),
            IconButtonWidget(),
            ElevatedButtonWidget(),
            OutlinedButtonWidget(),
            FloatingActionButtonWidget(),
            SizedBox(
              height: 20,
            ),
            CustomInkwellButton(),
            SizedBox(
              height: 20,
            ),
            CustomGestureButton()
          ],
        ),
      ),
    ));
  }
}
