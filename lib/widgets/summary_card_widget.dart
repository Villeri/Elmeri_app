import 'package:flutter/material.dart';

class SummaryCardWidget extends StatelessWidget {
  final String formPart;
  final String thingsOk;
  final String thingsNotOk;
  const SummaryCardWidget({
    Key? key,
    required this.formPart,
    required this.thingsOk,
    required this.thingsNotOk,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        borderOnForeground: true,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text("$formPart.",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              Text(
                "Kunnossa: $thingsOk",
                style: const TextStyle(fontSize: 18),
              ),
              Text(
                "EiKunnossa: $thingsNotOk",
                style: const TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
