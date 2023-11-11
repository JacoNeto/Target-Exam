import 'package:flutter/material.dart';

class CardChild extends StatelessWidget {
  const CardChild(
      {super.key,
      required this.label,
      this.onEditPressed,
      this.onDeletePressed});

  final String label;
  final void Function()? onEditPressed;
  final void Function()? onDeletePressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(label),
            )),
            IconButton(
              onPressed: onEditPressed,
              icon: const Icon(Icons.edit),
            ),
            IconButton(
              onPressed: onDeletePressed,
              icon: const Icon(Icons.delete),
            )
          ],
        ),
        const Divider()
      ],
    );
  }
}
