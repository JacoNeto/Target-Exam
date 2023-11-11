import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:target/view/info/info_page.dart';
import 'package:target/view/login/components/password_field.dart';
import 'package:target/view/login/components/privacy_politics.dart';
import 'package:target/view/login/components/submit_button.dart';
import 'package:target/view/login/components/user_field.dart';

import '../../utils/style/background.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: backgroundDecoration,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Form(
              key: _formKey,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    const UserFormField(),
                    const Gap(16),
                    const PasswordFormField(),
                    const Gap(32),
                    SubmitButton(onPressed: () {
                      _formKey.currentState!.save();
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.reset();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const InfoPage()),
                        );
                      }
                    }),
                    const Spacer(),
                    const PrivacyPolitics(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
