import 'package:flutter/material.dart';
class resnt extends StatelessWidget {
  const resnt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 236, 220),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 241, 236, 220),
        elevation: 0,
        toolbarHeight: 60,
        leadingWidth: 100,
        leading: Column(
          children: [
            Text(
              'Delivery',
              style: TextStyle(
                //fontStyle: ,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            Row(
              children: [
                Text(' Address',
                  style: TextStyle(
                    //fontStyle: ,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Icon(Icons.arrow_drop_down_sharp,
                color: Colors.black,
                )
              ],
            )
          ],
        ),

        actions: [CircleAvatar(
          radius: 22,
          backgroundImage: AssetImage('lib/images/restn1 2.png'),
        ),],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top:10),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(5, 15, 3, 4),
                  height: 75,
                  width: 117,
                  decoration: BoxDecoration(
                      color: Colors.green.shade300,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: GestureDetector(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'SELL',
                        style: TextStyle(
                          //fontStyle: ,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    margin: EdgeInsets.fromLTRB(5, 15, 3, 4),
                    height: 75,
                    width: 117,
                    decoration: BoxDecoration(
                        color: Colors.green.shade300,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'BUY',
                        style: TextStyle(
                          //fontStyle: ,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    margin: EdgeInsets.fromLTRB(5, 15, 3, 4),
                    height: 75,
                    width: 117,
                    decoration: BoxDecoration(
                        color: Colors.green.shade300,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'WASTE',
                        style: TextStyle(
                          //fontStyle: ,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Container(
              margin: EdgeInsets.fromLTRB(5, 10, 3, 10),
              height:75,
              width: 391,
              decoration: BoxDecoration(
                  color: Colors.green.shade300,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'DONATE',
                  style: TextStyle(
                    //fontStyle: ,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:35),
            child: Text(
              'Shop by category',
              style: TextStyle(
                //fontStyle: ,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(5, 10, 3, 1),
                height: 80,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('lib/images/brd_photo.png'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 10, 3, 1),
                height: 80,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('lib/images/veggie.png'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 10, 3, 1),
                height: 80,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('lib/images/fruit.png'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 10, 3, 1),
                height: 80,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    radius: 36.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('lib/images/atta.png'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 72,
                width: 40,
                margin: EdgeInsets.fromLTRB(8, 2, 2, 0),
                child: Text(
                  'Daily Bread & Eggs',
                  style: TextStyle(
                    //fontStyle: ,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Container(
                height: 72,
                width: 65,
                margin: EdgeInsets.fromLTRB(35, 2, 2, 0),
                child: Text(
                  'Vegetables',
                  style: TextStyle(
                    //fontStyle: ,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Container(
                height: 72,
                width: 40,
                margin: EdgeInsets.fromLTRB(43, 2, 2, 0),
                child: Text(
                  'Fruits',
                  style: TextStyle(
                    //fontStyle: ,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Container(
                height: 72,
                width: 40,
                margin: EdgeInsets.fromLTRB(50, 2, 2, 0),
                child: Text(
                  'Atta & Dals',
                  style: TextStyle(
                    //fontStyle: ,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5.0,10,2,22),
            child: Text(
              'Today\'s Special',
              style: TextStyle(
                //fontStyle: ,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),

            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 160,
                width: 180,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image:const DecorationImage(
                    image:AssetImage('lib/images/brd 1.png'),),
                ),
              ),
              Container(
                height: 160,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image:const DecorationImage(
                    image:AssetImage('lib/images/eegg 1.png'),),
                ),
              ),
            ],
          ),
          Flexible(
            child: BottomNavigationBar(
              showUnselectedLabels: true,

              iconSize: 17,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home,
                  color: Colors.grey,),
                  label: 'Home',
                  backgroundColor:Colors.blueGrey
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search,
                      color: Colors.grey),
                  label: 'Search',
                  backgroundColor: Colors.grey,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined,
                      color: Colors.grey),
                  label: 'Cart',
                  backgroundColor: Colors.grey,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person,
                      color: Colors.grey),
                  label: 'Account',
                ),
              ],

            ),
          ),
        ],
      ),
    );
  }
}