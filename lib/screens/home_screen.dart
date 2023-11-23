import 'package:flutter/material.dart';
import 'package:session/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("APP"),
      ),
      drawer: const DrawerWidget(),
      body: const Center(
        child: Text("Home Screen"),
      ),
    );
  }
}
