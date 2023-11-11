import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolitics extends StatelessWidget {
  const PrivacyPolitics({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text(
        "Política de Privacidade",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () async =>
          await launchUrl(Uri.parse("https://www.google.com")),
    );
  }
}
