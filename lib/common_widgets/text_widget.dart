import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final double size;
  final Color color;

  const CustomText(this.title, this.size,this.color);

  Widget build(BuildContext) {
    return Text(
      title,style: TextStyle(fontSize: size,color: color,fontWeight: FontWeight.bold,),
    );
  }
}
