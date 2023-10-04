import 'package:assesment_screens/screens/my_mobile_screen1.dart';
import 'package:assesment_screens/screens/my_mobile_screen2.dart';
import 'package:assesment_screens/screens/my_web_screen.dart';
import 'package:assesment_screens/screens/test2.dart';
import 'package:assesment_screens/screens/test_1.dart';
import 'package:assesment_screens/screens/test_3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWebScreen(),
    );
  }
}