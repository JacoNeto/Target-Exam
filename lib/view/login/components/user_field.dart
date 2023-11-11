import 'package:flutter/material.dart';

import '../../../utils/shared_widgets/default_text_field.dart';

class UserFormField extends StatelessWidget {
  const UserFormField({super.key, this.onChanged, this.initialValue});

  final void Function(String)? onChanged;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return DefaultTextFormField(
      initialValue: initialValue,
      label: "Usuário*",
      defaultValidator: false,
      textInputAction: TextInputAction.next,
      prefixIcon: const Icon(Icons.person),
      maxLength: 20,
      onChanged: onChanged,
    );
  }
}
