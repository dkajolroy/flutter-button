import 'package:flutter/material.dart';

class ListTitleWidget extends StatelessWidget {
  const ListTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("App Bar"),
        ),
        body: const ListTile(
          title: Text("My name"),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [Icon(Icons.email), Text("My Email")],
              ),
              Text("Help")
            ],
          ),
        ));
  }
}
