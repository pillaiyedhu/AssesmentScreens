import 'dart:async';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Test2 extends StatefulWidget {
  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  ScrollController _scrollController = ScrollController();
  int _currentIndex = 0;
  Timer _scrollTimer= Timer(Duration(seconds: 1), () { });

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollTimer.cancel();
    super.dispose();
  }

  void _startAutoScroll() {
    const Duration scrollDuration = const Duration(seconds: 2); // Time to scroll to next item
    const Duration pauseDuration = const Duration(seconds: 1); // Time to pause at each item

    _scrollTimer = Timer.periodic(scrollDuration + pauseDuration, (timer) {
      if (_currentIndex < 49) {
        // Assuming you have 50 items in your list
        setState(() {
          _currentIndex++;
        });
        _scrollToIndex(_currentIndex);
      } else {
        timer.cancel();
      }
    });
  }

  void _scrollToIndex(int index) {
    _scrollController.animateTo(
      index * 100.0, // Assuming each item's height is 100
      duration: Duration(seconds: 2), // Adjust the duration as needed
      curve: Curves.linear,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auto-Scrolling ListView'),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: 50, // Replace with your desired number of items
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
      ),
    );
  }
}

