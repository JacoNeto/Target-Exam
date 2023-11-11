import 'package:flutter/material.dart';

class DialogHandler {
  static Future<void> showDeleteConfirmationDialog(BuildContext context,
      {void Function()? onPressed}) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Remover'),
          content: const Text('Você realmente quer deletar esse item?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: onPressed,
              child: const Text(
                'Remover',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }
}
