import 'package:elmeri_sovellus/pages/instructions/automaatio2.dart';
import 'package:elmeri_sovellus/pages/instructions/automaatio3.dart';
import 'package:elmeri_sovellus/pages/instructions/energia1.dart';
import 'package:elmeri_sovellus/pages/instructions/lvitekniikka6.dart';
import 'package:elmeri_sovellus/pages/instructions/lvitekniikka7.dart';
import 'package:elmeri_sovellus/pages/instructions/sahkotekniikka4.dart';
import 'package:elmeri_sovellus/pages/instructions/sahkotekniikka5.dart';
import 'package:elmeri_sovellus/pages/instructions/yleiskartta.dart';
import 'package:flutter/material.dart';

class InstructionPage extends StatelessWidget {
  const InstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ohjeet"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Yleiskartta()));
                },
                child: const Text("Yleiskartta")),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Energia1()));
                },
                child: const Text("5A102")),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Automaatio2()));
                },
                child: const Text("5A101")),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Automaatio3()));
                },
                child: const Text("5A103")),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Sahkotekniikka4()));
                },
                child: const Text("5B103")),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Sahkotekniikka5()));
                },
                child: const Text("5A105")),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LVITekniikka6()));
                },
                child: const Text("5B120 & 5B122")),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LVITekniikka7()));
                },
                child: const Text("5B101 & 5B101a")),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
