import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elmeri_sovellus/login/utils.dart';
import 'package:elmeri_sovellus/login/verify_email.dart';
import 'package:elmeri_sovellus/pages/history_page.dart';
import 'package:elmeri_sovellus/pages/instructions/instructions_page.dart';
import 'package:elmeri_sovellus/pages/new_form_info_page.dart';
import 'package:elmeri_sovellus/pages/settings_page.dart';
import 'package:elmeri_sovellus/widgets/mainmenu_button_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'login/auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elmeri',
      scaffoldMessengerKey: Utils.messengerKey,
      navigatorKey: navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("Jotakin meni pieleen..."),
            );
          } else if (snapshot.hasData) {
            return const VerifyEmailPage();
          } else {
            return const AuthPage();
          }
        },
      ),
    );
  }
}

class MainMenu extends StatefulWidget {
  String userType;

  MainMenu({
    Key? key,
    required this.userType,
  }) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Päävalikko"),
        actions: [
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.settings),
            onPressed: widget.userType != "noUser"
                ? () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingsPage()));
                  }
                : null,
          ),
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.logout),
            onPressed: () => FirebaseAuth.instance.signOut(),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            MainMenuButton(
              text: "Uusi lomake",
              icon: const Icon(Icons.feed_outlined),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            NewFormInfoPage(accountablePeople: [])));
              },
            ),
            const SizedBox(height: 30),
            MainMenuButton(
              text: "Ohjeet",
              icon: const Icon(Icons.help_outline),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InstructionPage()));
              },
            ),
            const SizedBox(height: 30),
            MainMenuButton(
              text: "Historia",
              icon: const Icon(Icons.feed_outlined),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HistoryPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
