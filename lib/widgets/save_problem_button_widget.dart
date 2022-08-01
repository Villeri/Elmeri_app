import 'package:flutter/material.dart';

class SaveProblemButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const SaveProblemButtonWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.cloud_upload_outlined),
      label: const Text("Tallenna"),
      onPressed: onPressed,
    );
  }
}
