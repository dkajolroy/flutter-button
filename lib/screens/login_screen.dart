import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController passwordController2 = TextEditingController();
bool obscureText = true;

final _formkey = GlobalKey<FormState>();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("Login Please "),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email is empty !";
                      } else if (value.length < 3) {
                        return "Invalid email !";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_outline),
                        labelText: "Email address"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password is empty !";
                      } else if (value.length < 4) {
                        return "Password is too short";
                      }
                      return null;
                    },
                    obscureText: obscureText,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline),
                        labelText: "Password",
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                            icon: const Icon(Icons.visibility))),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController2,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password is empty !";
                      } else if (value != passwordController) {
                        return "Password does not match !";
                      }
                      return null;
                    },
                    obscureText: obscureText,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline),
                        labelText: "Re-type Password",
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                            icon: const Icon(Icons.visibility))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      style: buttonStyle,
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          print("OK");
                        } else {
                          print("Error");
                        }
                      },
                      child: const Text("Login"))
                ],
              )),
        )));
  }
}

ButtonStyle buttonStyle = TextButton.styleFrom(
    alignment: Alignment.center,
    backgroundColor: Colors.purple,
    foregroundColor: Colors.white,
    fixedSize: const Size.fromWidth(double.maxFinite),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)));
