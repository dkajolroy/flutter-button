import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("App Bar"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Username",
                      prefixIcon: Icon(Icons.person),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.teal,
                      ))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility),
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.teal,
                      ))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: screen.width - 40,
                child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    onPressed: () {},
                    child: const Text("Sign in")),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: const Text("Forget password"))),
              SizedBox(
                width: screen.width - 40,
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      backgroundColor: Colors.red[400],
                      foregroundColor: Colors.white),
                  onPressed: () {},
                  label: const Text("Google"),
                  icon: const Icon(
                    Icons.fmd_good_rounded,
                  ),
                ),
              ),
              SizedBox(
                width: screen.width - 40,
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                  onPressed: () {},
                  label: const Text("Facebook"),
                  icon: const Icon(Icons.facebook),
                ),
              ),
            ],
          ),
        ));
  }
}
