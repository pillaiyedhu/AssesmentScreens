import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Test3 extends StatelessWidget {
   
  Test3({super.key});

  List<String> images = [
    'assets/images/plant1.png',
    'assets/images/plant2.png',
    'assets/images/plant3.png',
    'assets/images/plant4.png',
    'assets/images/plant5.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (context, index, realIndex) {
            return SizedBox(
              height: 250,
              child: Card(child: Image.asset(images[index],fit: BoxFit.cover,))
            );
          },
          options: CarouselOptions(
            scrollDirection: Axis.vertical
          )),
    );
  }
}
