import 'package:flutter/material.dart';
import 'package:session/page_route/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  final String name = "Kajol roy";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page 2")),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Page 2",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Page3(name: name),
                      ));
                },
                child: const Text("Go to Page 3"))
          ],
        ),
      )),
    );
  }
}
