import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class p_data extends StatelessWidget{
  final photo;
  final pName;
  final int price;
  const p_data({
    required this.photo,
    required this.pName,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height:170,
      width: 150,
      decoration: BoxDecoration(
          color:  Color(0XFFE8DD8B),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top:5 ),
            height: 80,
            width: 100,
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(photo),
                  fit: BoxFit.fill,
                )
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(pName,
                style: TextStyle(
                    fontFamily: 'RobotoCondensed',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),)
          ),
          Container(
            alignment:AlignmentDirectional.center ,
            height: 15,
            child: Text(
              price.toString(),
              style: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 2),
              child: MaterialButton(
                color: Colors.orange,
                onPressed: (){},
                child: Text('ADD TO CART',
                  style: TextStyle(
                      fontFamily: 'RobotoCondensed',
                      decoration: TextDecoration.underline,
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              )
          ),
        ],
      ),

    );

  }
}