import 'package:flutter/material.dart';
import 'package:try_f/pages/signup.dart';

class cnctrPage extends StatefulWidget {
  const cnctrPage({super.key});

  @override
  State<cnctrPage> createState() => _cnctrPageState();
}

class _cnctrPageState extends State<cnctrPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: GridView(
          children: [
            GestureDetector(
              onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return RegisterPage();
              }),
              );
                },
              child: Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset('lib/images/restaurant.png',
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        'RESTAURANT',
                          style: TextStyle(
                              fontFamily: 'RobotoCondensed',
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                      )),
                ],
              ),
            ),

          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return RegisterPage();
              }));
            },
            child: Stack(
          children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Image.asset('lib/images/grocery.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
            Container(
                alignment: Alignment.center,
                child: Text(
                  'GROCERY',
                  style: TextStyle(
                      fontFamily: 'RobotoCondensed',
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
          ],
        ),
          ),


          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return RegisterPage();
              }));
            },
            child: Stack(
                children: <Widget>[
                  Container(
                    height: 250,
                alignment: Alignment.center,
                child: Image.asset('lib/images/ngo_m.jpg',
                  height: 200,
                  width: double.infinity,
            ),
          ),
            Container(
                alignment: Alignment.center,
                child: Text(
                  'NGO',
                  style: TextStyle(
                      fontFamily: 'RobotoCondensed',
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
          ],
        ),
          ),


          GestureDetector(onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return RegisterPage();
            }));
          },
            child: Stack(
            children: <Widget>[
            Container(
            alignment: Alignment.center,
            child: Image.asset('lib/images/location.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
            Container(
                alignment: Alignment.center,
                child: Text(
                  'FARMER',
                  style: TextStyle(
                      fontFamily: 'RobotoCondensed',
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
          ],
        ),
          ),
        ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing:10,
              crossAxisSpacing: 10 ),
        ),
      ),
      ),
    );
  }
}