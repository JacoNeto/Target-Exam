import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:target/utils/shared_widgets/decoration.dart';

class DefaultTextFormField extends StatelessWidget {
  const DefaultTextFormField({
    super.key,
    this.validator,
    this.onChanged,
    this.inputFormatters,
    required this.label,
    this.defaultValidator = true,
    this.hintText,
    this.initialValue,
    this.keyboardType,
    this.onTap,
    this.controller,
    this.readOnly = false,
    this.prefixIcon,
    this.maxLength,
    this.textInputAction,
    this.onFieldSubmitted,
    this.focusNode,
  });

  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final String label;
  final bool defaultValidator;
  final String? hintText;
  final String? initialValue;
  final TextInputType? keyboardType;
  final void Function()? onTap;
  final void Function(String)? onFieldSubmitted;
  final TextEditingController? controller;
  final bool readOnly;
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final int? maxLength;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        initialValue: initialValue,
        controller: controller,
        validator: defaultValidator
            ? (value) {
                if (value == null || value.isEmpty) {
                  return "$label faltando";
                }
                if (value[value.length - 1] == ' ') {
                  return "Por favor, remova o(s) espaço(s) do final";
                }
                return null;
              }
            : validator,
        onChanged: onChanged,
        inputFormatters: inputFormatters,
        readOnly: readOnly,
        textInputAction: textInputAction,
        maxLength: maxLength,
        onFieldSubmitted: onFieldSubmitted,
        focusNode: focusNode,
        keyboardType: keyboardType,
        onTap: onTap,
        decoration: InputDecoration(
            hintText: hintText,
            hoverColor: Colors.white,
            prefixIcon: prefixIcon,
            filled: true,
            fillColor: Colors.white,
            label: Text(label),
            contentPadding: const EdgeInsets.all(12),
            enabledBorder: customEnabledBorder,
            focusedBorder: customFocusedBorder,
            errorBorder: customErrorBorder,
            focusedErrorBorder: customErrorBorder));
  }
}
