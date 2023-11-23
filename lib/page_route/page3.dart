import 'dart:io';

import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  final name;
  const Page3({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page 3 $name")),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Page 3",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Go to Page 1")),
            ElevatedButton(
                onPressed: () {
                  exit(0);
                },
                child: const Text("Exit"))
          ],
        ),
      )),
    );
  }
}
