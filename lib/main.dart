import 'package:flutter/material.dart';
import 'package:session/page_route/page1.dart';
import 'package:session/page_route/page2.dart';
import 'package:session/page_route/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "page1",
      routes: {
        "page1": (context) => const Page1(),
        "page2": (context) => const Page2(),
        "page3": (context) => const Page3()
      },
    );
  }
}
