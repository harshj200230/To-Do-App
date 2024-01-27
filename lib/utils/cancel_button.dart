import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  CancelButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(color: Colors.red[300],
        child: Text(text),
        onPressed: onPressed);
  }
}
