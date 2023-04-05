import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../pages/login.dart';
import 'intro_pg2.dart';
import 'intro_pg3.dart';
import 'intropg1.dart';


class onboardingScreen extends StatefulWidget {
  const onboardingScreen({super.key});

  @override
  State<onboardingScreen> createState() => _onboardingScreenState();
}

class _onboardingScreenState extends State<onboardingScreen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              children: [
                intropg1(),
                intropg2(),
                intropg3(),
              ],
            ),
            Container(
                alignment: Alignment(0, 0.80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text('NEXT',
                          style: TextStyle(
                              fontFamily: 'RobotoCondensed',
                              //fontStyle: ,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                    ),
                    SmoothPageIndicator(controller: _controller, count: 3),
                    GestureDetector(
                        child: (Text('SKIP',
                          style: TextStyle(
                              fontFamily: 'RobotoCondensed',
                              //fontStyle: ,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),)),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return Login();
                            }));
                      },
                      ),
                  ],
                )),
          ],
        ));
  }
}