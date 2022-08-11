import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'forgot_password.dart';
import 'utils.dart';

class LoginWidget extends StatefulWidget {
  final VoidCallback onClickedSignup;
  const LoginWidget({
    Key? key,
    required this.onClickedSignup,
  }) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String userType = "user";

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 60),
          const Text(
            "Elmeri",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 40),
          TextField(
            controller: emailController,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: "Sähköposti",
            ),
          ),
          const SizedBox(height: 4),
          TextField(
            controller: passwordController,
            textInputAction: TextInputAction.done,
            decoration: const InputDecoration(
              labelText: "Salasana",
            ),
            obscureText: true,
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
            ),
            icon: const Icon(Icons.lock_open, size: 32),
            label: const Text(
              "Kirjaudu sisään",
              style: TextStyle(fontSize: 24),
            ),
            onPressed: signIn,
          ),
          const SizedBox(height: 15),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
            ),
            icon: const Icon(Icons.no_accounts_outlined, size: 32),
            label: const Text(
              "Jatka ilman kirjautumista",
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () {
              setState(() {
                userType = "noUser";
              });
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("Huomio"),
                  content: const Text(
                      "Vastuutahoksi voi lisätä vain ne, joilla on käyttäjä."),
                  actions: <Widget>[
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("Takaisin"),
                        ),
                        const Spacer(),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainMenu(
                                    userType: userType,
                                  ),
                                ),
                              );
                            },
                            child: const Text("OK"))
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: 24),
          GestureDetector(
            child: Text(
              "Unohtuiko salasana?",
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 20,
              ),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => const ForgotPasswordPage()),
            ),
          ),
          const SizedBox(height: 16),
          RichText(
            text: TextSpan(
                style: const TextStyle(fontSize: 20, color: Colors.black),
                text: "Ei käyttäjää? ",
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = widget.onClickedSignup,
                    text: "Rekisteröidy",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }

  Future signIn() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      // ignore: avoid_print
      print(e);
      Utils.showSnackBar(e.message);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
