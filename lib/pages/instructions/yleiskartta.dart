import 'package:flutter/material.dart';

class Yleiskartta extends StatefulWidget {
  const Yleiskartta({Key? key}) : super(key: key);

  @override
  _YleiskarttaState createState() => _YleiskarttaState();
}

class _YleiskarttaState extends State<Yleiskartta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Yleiskartta tilasta")),
        body: Image.asset("assets/images/yleiskartta_tilasta.JPG"));
  }
}
