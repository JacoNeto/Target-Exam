import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF44bd6e)),
      onPressed: onPressed,
      child: const Text("Entrar", style: TextStyle(color: Colors.white)),
    );
  }
}
