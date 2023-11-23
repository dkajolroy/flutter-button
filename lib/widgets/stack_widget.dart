import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          color: Colors.grey[400],
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  height: 300,
                  width: 300,
                  color: Colors.teal,
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
