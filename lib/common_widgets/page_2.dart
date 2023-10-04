import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
 Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(right: 10, child: Icon(Icons.search)),
        Positioned(
          top: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Indoor',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              Text(
                'Plants',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Positioned(
          top: 80,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width * 0.7,
            // color: Colors.blue,
            child: SingleChildScrollView(
              child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        //color: Colors.red,
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Image.asset('assets/images/plant1.png',
                            fit: BoxFit.fill),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Turf pot plant',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                          'Big leaf plant in a turf pot for your \nhome or office decor',
                          style: TextStyle(color: Colors.grey, fontSize: 14)),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('\$45.00',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24)),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}