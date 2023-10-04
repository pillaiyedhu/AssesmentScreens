import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  CustomTextButton(this.title,this.onPressed);

  Widget build(BuildContext) {
    return TextButton(onPressed: onPressed, child: Text(title,style: const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),));
  }
}
