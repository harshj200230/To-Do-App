import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  MyButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(color: Colors.yellow[600],
        child: Text(text),
        onPressed: onPressed);
  }
}
