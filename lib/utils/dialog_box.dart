import 'package:flutter/material.dart';
import 'package:to_do_app/utils/cancel_button.dart';
import 'package:to_do_app/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
   DialogBox({Key? key,
    required this.controller,
    required this.onCancel,
    required this.onSave,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      backgroundColor: Colors.yellow,
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
              textCapitalization: TextCapitalization.sentences,
            ),

            SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(text: "Save", onPressed: onSave),
                SizedBox(width: 20,),
                CancelButton(text: "Cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
