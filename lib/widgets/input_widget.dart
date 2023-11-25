import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isObsecure = true;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("App Bar"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email is empty !";
                    } else if (value.length < 4) {
                      return "Invalid email !";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      labelText: "Username",
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      prefixIcon: Icon(Icons.person),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.teal,
                      ))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password is required ";
                    } else if (value.length < 4) {
                      return "Minimum 4 characters required";
                    }
                    return null;
                  },
                  obscureText: isObsecure,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObsecure = !isObsecure;
                            });
                          },
                          icon: const Icon(Icons.visibility)),
                      labelText: "Password",
                      prefixIcon: const Icon(
                        Icons.lock,
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.teal,
                      ))),
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
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print("Success!");
                        }
                        print("Error!");
                      },
                      child: const Text("Sign in")),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text("Forget password"))),
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
                RichText(
                    text: const TextSpan(
                        style: TextStyle(color: Colors.red),
                        text: "Don't have an account to ",
                        children: [
                      TextSpan(
                          style: TextStyle(color: Colors.blue),
                          text: "Register")
                    ])),
              ],
            ),
          ),
        ));
  }
}
