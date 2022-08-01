import 'package:flutter/material.dart';

class SelectImageButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const SelectImageButtonWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.attach_file),
      label: const Text("Lisää kuva"),
      onPressed: onPressed,
    );
  }
}
