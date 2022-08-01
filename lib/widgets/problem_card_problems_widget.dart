import 'package:flutter/material.dart';

class ProblemCardProblemsWidget extends StatelessWidget {
  final TextEditingController controller;

  const ProblemCardProblemsWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: "Havaittu poikkeama ja toimenpiteet"),
      keyboardType: TextInputType.multiline,
      maxLines: null,
      controller: controller,
    );
  }
}
