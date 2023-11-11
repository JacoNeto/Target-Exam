import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:target/utils/shared_widgets/decoration.dart';

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({super.key, this.onChanged});

  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Informe a senha";
          }
          if (value.length < 2) {
            // O campo senha não pode ter menos que dois caracteres.
            return "Senha precisa ter ao menos 2 dígitos";
          }
          return null;
        },
        onChanged: onChanged,
        obscureText: true,
        inputFormatters: [
          /*
          O campo senha não pode ter caracteres especiais, sendo apenas possível
          informar 'a' até 'Z' e '0' até '9'.
          */
          FilteringTextInputFormatter.deny(RegExp(r'[^\w\s]')),
        ],
        keyboardType: TextInputType.text,
        //  Ambos os campos não podem ultrapassar 20 caracteres.
        maxLength: 20,
        decoration: InputDecoration(
            label: const Text(
              "Senha",
            ),
            contentPadding: const EdgeInsets.all(12),
            enabledBorder: customEnabledBorder,
            filled: true,
            fillColor: Colors.white,
            focusedBorder: customFocusedBorder,
            prefixIcon: const Icon(Icons.lock),
            errorBorder: customErrorBorder,
            focusedErrorBorder: customErrorBorder));
  }
}
