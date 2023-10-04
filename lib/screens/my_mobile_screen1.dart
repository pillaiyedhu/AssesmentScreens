import 'package:assesment_screens/common_widgets/page_1.dart';
import 'package:assesment_screens/common_widgets/page_2.dart';
import 'package:assesment_screens/common_widgets/page_3.dart';
import 'package:assesment_screens/screens/my_mobile_screen2.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyMobileScreen1 extends StatefulWidget {
  @override
  State<MyMobileScreen1> createState() => _MyMobileScreen1State();
}

class _MyMobileScreen1State extends State<MyMobileScreen1> {
  int? currentIndex = 0;
  List<String> list = ['Green Plants', 'Indoor Plants', 'Shape Close'];

  final List<Widget> pages = [Page1(), Page2(), Page3()];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.15,
                color: Color.fromARGB(255, 105, 146, 85),
              ),
              Positioned(
                  top: 20,
                  left: 10,
                  child: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyMobileScreen2(),
                          ));
                    },
                  )),
              Positioned(
                top: 100,
                child: Container(
                  height: 400,
                  width: 60,
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: CurvedNavigationBar(
                      animationDuration: Duration(seconds: 1),
                      animationCurve: Curves.decelerate,
                      buttonBackgroundColor: Colors.white,
                      backgroundColor: Colors.white,
                      color: Color.fromARGB(255, 105, 146, 85),
                      height: 70,
                      items: [Text(''), Text(''), Text('')],
                      onTap: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 20,
                  left: 15,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              Positioned(
                  left: 8,
                  top: 125,
                  child: Column(
                    children: [
                      RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            list[0],
                            style: TextStyle(color: Colors.white),
                          )),
                      SizedBox(
                        height: 55,
                      ),
                      RotatedBox(
                          quarterTurns: 3,
                          child: Text(list[1],
                              style: TextStyle(color: Colors.white))),
                      SizedBox(
                        height: 50,
                      ),
                      RotatedBox(
                          quarterTurns: 3,
                          child: Text(list[2],
                              style: TextStyle(color: Colors.white))),
                    ],
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, top: 10, left: 40),
            child: Container(
                //color: Colors.red,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.7,
                child: pages[currentIndex!]),
          )
        ],
      ),
    );
  }
}
