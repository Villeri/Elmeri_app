import 'package:flutter/material.dart';

class FormCardWidget extends StatelessWidget {
  final String headerText;
  final String thingsOk;
  final String thingsNotOk;
  final VoidCallback plusThingsOk;
  final VoidCallback minusThingsOk;
  final VoidCallback plusThingsNotOk;
  final VoidCallback minusThingsNotOk;

  const FormCardWidget({
    Key? key,
    required this.headerText,
    required this.thingsOk,
    required this.thingsNotOk,
    required this.plusThingsOk,
    required this.minusThingsOk,
    required this.plusThingsNotOk,
    required this.minusThingsNotOk,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      child: Column(
        children: [
          Text(
            headerText,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(
                "Kunnossa: $thingsOk",
                style: const TextStyle(fontSize: 20),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.add),
                color: Colors.green,
                splashColor: Colors.green,
                onPressed: plusThingsOk,
              ),
              IconButton(
                icon: const Icon(Icons.remove),
                color: Colors.red,
                splashColor: Colors.red,
                onPressed: minusThingsOk,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                "Ei kunnossa: $thingsNotOk",
                style: const TextStyle(fontSize: 20),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.add),
                color: Colors.green,
                splashColor: Colors.green,
                onPressed: plusThingsNotOk,
              ),
              IconButton(
                icon: const Icon(Icons.remove),
                color: Colors.red,
                splashColor: Colors.red,
                onPressed: minusThingsNotOk,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
