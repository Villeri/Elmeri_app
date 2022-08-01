import 'package:flutter/material.dart';

class MainMenuButton extends StatelessWidget {
  final String text;
  final Icon icon;
  final VoidCallback onPressed;

  const MainMenuButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
      ),
      icon: icon,
      label: Text(
        text,
        style: const TextStyle(fontSize: 24),
      ),
      onPressed: onPressed,
    );
  }
}
