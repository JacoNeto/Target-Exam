import 'package:flutter/material.dart';

var backgroundDecoration = const BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [0.1, 0.5, 0.7, 0.9],
    colors: [
      // Colors are easy thanks to Flutter's Colors class.
      Color(0xFF1C4E64),
      Color(0xFF246372),
      Color(0xFF298284),
      Color(0xFF2E968F),
    ],
  ),
);
