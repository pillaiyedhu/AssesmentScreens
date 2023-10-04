import 'package:assesment_screens/screens/my_mobile_screen1.dart';
import 'package:assesment_screens/screens/my_web_screen.dart';
import 'package:flutter/material.dart';

class MyMobileScreen2 extends StatelessWidget {

  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return MyMobileScreen1();
                },
              ));
            },
            icon: (Icon(Icons.arrow_back_rounded, color: Colors.black))),
        // actions: [
        //   Icon(
        //     Icons.search,
        //     color: Colors.black,
        //   )
        // ],

        // actions:[
        //   Image.asset('assets/images/cart.png',height: 2,),
        // ],
        backgroundColor: Colors.white,
        elevation: 0.1,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(255, 105, 146, 85),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150)),
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              child: Container(
                height: 400,
                width: 400,
                //color: Colors.red,
                child: Stack(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Positioned(
                      left: 70,
                      child: Container(
                          height: 250,
                          width: 250,
                          child: Image.asset(
                            'assets/images/plant1.png',
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Positioned(
                      left: 70,
                      top: 250,
                      // height: 200,
                      child: Text('Wall Mounted Plant \nGlass Pot',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Positioned(
                      left: 70,
                      top: 320,
                      child: Text(
                          'Plant in a glass bowl, it can be mounted \non a wall or ceiling (holders included)',
                          style: TextStyle(color: Colors.grey, fontSize: 14)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Positioned(
                      left: 70,
                      top: 370,
                      child: Text('\$85.00',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24)),
                    ),
                    Positioned(
                        top: 30,
                        left: 300,
                        child: CircleAvatar(
                          child: Icon(Icons.color_lens_outlined),
                          radius: 20,
                          backgroundColor: Color.fromARGB(255, 100, 145, 101),
                        ))
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.person, color: Colors.white),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Height',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('40cm - 50cm',
                      style: TextStyle(color: Colors.white, fontSize: 10))
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.bolt_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Temperature',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('18C to 25C',
                      style: TextStyle(color: Colors.white, fontSize: 10))
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyWebScreen(),
                            ));
                      },
                      icon: Icon(Icons.pets_outlined, color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Pot',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Self Warming Pot',
                      style: TextStyle(color: Colors.white, fontSize: 10))
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
