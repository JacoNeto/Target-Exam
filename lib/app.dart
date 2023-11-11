import 'package:flutter/material.dart';
import 'package:target/view/login/login_page.dart';

class TargetExam extends StatelessWidget {
  const TargetExam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Target Exam',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
