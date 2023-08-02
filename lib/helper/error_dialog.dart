
import 'package:Todo_app/helper/rounded_button.dart';
import 'package:flutter/material.dart';

class CustomErrorDialog extends StatefulWidget {
  final String title;
  CustomErrorDialog({ required this.title});

  @override
  _CustomErrorDialogState createState() => _CustomErrorDialogState();
}

class _CustomErrorDialogState extends State<CustomErrorDialog> {
  @override
  Widget build(BuildContext context) {
    return
      AlertDialog(
        title: Text("error") ,
        content: Text(widget.title) ,
        actions: [
          RoundedButton(onTap: () {
            Navigator.pop(context);
          }, text: 'Back',

          )
        ],
      )
    ;
  }
}
