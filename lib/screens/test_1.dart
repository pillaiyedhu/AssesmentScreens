import 'dart:async';

import 'package:assesment_screens/common_widgets/custom_text_button.dart';
import 'package:assesment_screens/common_widgets/text_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
    final CarouselController carouselController = CarouselController();
  List<String> image = [
    'assets/images/plant1.jpg',
    'assets/images/plant2.jpg',
    'assets/images/plant3.jpg',
    'assets/images/plant4.jpg',
    'assets/images/plant5.jpg'
  ];

  List<String> names = [
    'Crassule \nOvata',
    'Dracarena \nTrifasciata',
    'Browningia \nHertlingiana',
    'Chlorophytum \nComosum',
    'Haworthiopsis \nAttenuata',
  ];

  double initialheight = 400;
  double initialwidth = 200;
  int myindex = 0;
  int currentPage = 0;

  PageController pageController =
      PageController(viewportFraction: 0.3, initialPage: 0);

  // @override
  // void initState() {
  //   super.initState();
  //   pageController.animateToPage(currentPage,
  //       duration: Duration(seconds: 1), curve: Curves.linear);
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 202, 220, 235),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Positioned(
              top: 20,
              left: 480,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextButton('Home', () {}),
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
            const SizedBox(
              height: 50,
            ),
            Positioned(
              top: 80,
              left: 480,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                      'Go green', 18, Color.fromARGB(255, 129, 185, 131)),
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
                      child:
                          CustomText('The world of plants', 50, Colors.black)),
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
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 350,
                  ),
                  // Container(
                  //   height: 300,
                  //   width: double.infinity,
                  //   child: CarouselSlider.builder(
                  //       itemCount: 5,
                  //       carouselController: carouselController,
                  //       itemBuilder: (context, index, realIndex) {
                  //         return Container(
                  //             width: 300,
                  //             child: Card(
                  //               color: const Color.fromARGB(255, 202, 220, 235),
                  //               shadowColor: Colors.black,
                  //               child: Stack(
                  //                 fit: StackFit.expand,
                  //                 children: [
                  //                   Image.asset(image[index], fit: BoxFit.fill),
                  //                   Positioned(
                  //                       left: 130,
                  //                       bottom: 30,
                  //                       child: Text(
                  //                         names[index],
                  //                         style: TextStyle(
                  //                             color: Colors.black,
                  //                             fontSize: 24,
                  //                             fontWeight: FontWeight.bold),
                  //                       ))
                  //                 ],
                  //               ),
                  //             ));
                  //       },
                  //       options: CarouselOptions(
                  //           autoPlay: true,
                  //           autoPlayAnimationDuration: Duration(seconds: 1),
                  //           viewportFraction: 0.25,
                  //           enableInfiniteScroll: true,
                  //           enlargeCenterPage: true,
                  //           pageSnapping: true)),
                  // ),

                  InkWell(
                    onTap: () {
                      pageController.animateToPage(currentPage,
                          duration: Duration(seconds: 1), curve: Curves.linear);
                    },
                    child: Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: PageView.builder(
                        controller: pageController,
                        //itemCount: 5,
                        itemBuilder: (context, index) {
                          print(index);
                            return Container(
                              width: 100,
                              child: Card(
                                  color: Colors.white,
                                  child: Image.asset(image[index % image.length])),
                            );
                          
                        },
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}