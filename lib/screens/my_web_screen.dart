import 'dart:async';

import 'package:assesment_screens/common_widgets/custom_text_button.dart';
import 'package:assesment_screens/common_widgets/text_widget.dart';
import 'package:assesment_screens/screens/my_mobile_screen1.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyWebScreen extends StatefulWidget {
  @override
  State<MyWebScreen> createState() => _MyWebScreenState();
}

class _MyWebScreenState extends State<MyWebScreen> {
  ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0.0;
  //double _zoomFactor = 5.0;
  int currentIndex = -1;

  Timer _timer = Timer(Duration(seconds: 1), () {});

  List<String> images = [
    'assets/images/plant1.png',
    'assets/images/plant2.png',
    'assets/images/plant3.png',
    'assets/images/plant4.png',
    'assets/images/plant5.png'
  ];

  // void changeCurrentIndex() {
  //   setState(() {
  //     currentIndex++;
  //     print(currentIndex);
  //   });
  // }

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
    //changeCurrentIndex();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 4), (timer) {
      _scrollOffset += 400; // Adjust the scroll offset as needed
      //currentIndex++;
      _scrollController.animateTo(
        _scrollOffset,
        duration: Duration(seconds: 2), // Adjust the duration as needed
        curve: Curves.linear,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 211, 223, 226),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 480,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomTextButton('Home', 
                  () {
                    Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return MyMobileScreen1();
                    },
                  )
                    );
                  },
                ),
                const SizedBox(
                  width: 40,
                ),
                CustomTextButton('Plant finder', () {}),
                const SizedBox(
                  width: 40,
                ),
                CustomTextButton('Products', () {}),
                const SizedBox(
                  width: 40,
                ),
                CustomTextButton('About us', () {}),
                const SizedBox(
                  width: 40,
                ),
                CustomTextButton('Contact', () {}),
                const SizedBox(
                  width: 40,
                ),
                CustomTextButton('My plants', () {}),
                const SizedBox(
                  width: 40,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/user.png')),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/cart.png')),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Positioned(
            top: 80,
            left: 480,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText('Go green', 18, Color.fromARGB(255, 129, 185, 131)),
                SizedBox(
                  width: 780,
                )
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 480,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    alignment: Alignment.center,
                    width: 280,
                    height: 200,
                    child: CustomText('The world of plants', 50, Colors.black)),
                const SizedBox(
                  width: 50,
                ),
                Container(
                    alignment: Alignment.center,
                    width: 300,
                    height: 200,
                    child: CustomText(
                        '''Discover everything you need to know about your plants, treat them with kindness and they will take care of you''',
                        20,
                        Colors.black45)),
                const SizedBox(
                  width: 250,
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              controller: _scrollController,
              itemCount: 5 * 100, // Replace with your desired number of items
              itemBuilder: (context, index) {
                final itemIndex = index % 5;
                currentIndex++;
                return SizedBox(
                    height: 400,
                    width: 400,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 50,
                          child: Center(
                            child: Transform.scale(
                              scaleY: index == currentIndex ? 1.3 : 1,
                              scaleX: index == currentIndex ? 1.1 : 1,
                              // scale: itemIndex==0?1.2:1,
                              child: Container(
                                height: 250,
                                width: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Card(
                                  color: Color.fromARGB(255, 219, 230, 233),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            right: 250,
                            bottom: 200,
                            child: Transform.scale(
                                scaleY: index == currentIndex ? 2.8 : 1,
                                scaleX: index == currentIndex ? 1.8 : 1,
                                child: Image.asset(
                                  'assets/images/plant6.png',
                                  fit: BoxFit.scaleDown,
                                  height: 250,
                                ))),
                        Positioned(
                            left: 100,
                            bottom: 100,
                            child: Text(
                              'Dracaena \nTrifasciata',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ))
                      ],
                    ));
              },
            ),
          ),
        ],
      ),
    ));
  }
}
