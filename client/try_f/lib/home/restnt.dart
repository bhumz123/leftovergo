import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:try_f/pages/login.dart';
import 'package:try_f/Variables/var_restnt.dart';
import 'package:try_f/pages/signup.dart';


class resnt extends StatefulWidget {
  const resnt({Key? key}) : super(key: key);

  @override
  State<resnt> createState() => _resntState();
}
void _showDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('LOG OUT?'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor:Color(0XFFE8DD8B) ),
                  onPressed: (){},
                  //decoration:BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "No",
                    style: TextStyle(
                        fontFamily: 'Property Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown),
                  ),
                )),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor:Color(0XFFE8DD8B) ),
                  onPressed: (){
                      (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return RegisterPage();
                  }));
                  };
                },
                 //style: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Yes",
                    style: TextStyle(
                        fontFamily: 'Property Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown),
                  ),
                ))
          ],
        );
      });
}

class _resntState extends State<resnt> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 236, 220),
      appBar: AppBar(
        backgroundColor: Color(0XFFE8DD8B),
        elevation: 0,
        toolbarHeight: 60,
        leadingWidth: 100,
        leading: Column(
          children: [
            Text(
              'Delivery',
              style: TextStyle(
                  fontFamily: 'Product Sans',
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
                      fontFamily: 'Product Sans',
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

        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor:Color(0XFFE8DD8B) ),
          onPressed: (){
            _showDialog(context);
          },
          child: CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage('lib/images/restn1 2.png'),
          ),
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
                      color: Color(0XFFefe298),
                      borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image:AssetImage('lib/images/dollar.png'),
                        alignment: Alignment.bottomRight),
                  ),
                  child: GestureDetector(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Sell',
                        style: TextStyle(
                          //fontStyle: ,
                            fontFamily: 'Product Sans',
                            fontSize: 25,
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
                        color: Color(0XFFefe298),
                        borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image:AssetImage('lib/images/cart.png'),
                          alignment: Alignment.bottomRight),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Buy',
                        style: TextStyle(
                            fontFamily: 'Product Sans',
                          //fontStyle: ,
                            fontSize: 25,
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
                        color: Color(0XFFefe298),
                        borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image:AssetImage('lib/images/waste.png'),
                          alignment: Alignment.bottomRight),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Waste',
                        style: TextStyle(
                            fontFamily: 'Product Sans',
                          //fontStyle: ,
                            fontSize: 25,
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
                  color: Color(0XFFefe298),
                  borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image:AssetImage('lib/images/hand.png'),
                    alignment: Alignment.bottomRight),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Donate Food  ',
                  style: TextStyle(
                    //fontStyle: ,
                      fontFamily: 'Product Sans',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Shop By Category',
                style: TextStyle(
              fontFamily: 'Product Sans',
                    fontSize: 25,
               fontWeight: FontWeight.bold,
                  color: Colors.black),),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [

                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height:90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Color(0XFFE8DD8B),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset('lib/images/milk-box 1.png',
                            height: 80,
                            width: 90,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text('Dairy',
                          style: TextStyle(
                              fontFamily: 'Product Sans',
//fontStyle: ,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),)
                      ],
                    ),
                    const SizedBox(width: 12,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height:90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Color(0XFFE8DD8B),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset('lib/images/veggie_new.png',
                            height: 80,
                            width: 90,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text('Vegetables',
                          style: TextStyle(
                              fontFamily: 'Product Sans',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),)
                      ],
                    ),
                    const SizedBox(width: 12,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height:90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Color(0XFFE8DD8B),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset('lib/images/fruit.png',
                            height: 80,
                            width: 90,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text('Fruits',
                          style: TextStyle(
                              fontFamily: 'Product Sans',
//fontStyle: ,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),)
                      ],
                    ),
                    const SizedBox(width: 12,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height:90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Color(0XFFE8DD8B),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset('lib/images/gluten.png',
                            height: 80,
                            width: 90,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text('Atta & Dals',
                          style: TextStyle(
                              fontFamily: 'RobotoCondensed',
//fontStyle: ,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),)
                      ],
                    ),
                    const SizedBox(width: 12,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height:90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Color(0XFFE8DD8B),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset('lib/images/meat_new.png',

                          ),
                        ),
                        const SizedBox(height: 8),
                        Text('Meat & Seafood',
                          style: TextStyle(
                              fontFamily: 'Product Sans',

                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),)
                      ],
                    ),
                    const SizedBox(width: 12,),
                  ],
                ),


      ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5.0,10,2,22),
            child: Text(
              'Today\'s Special',
              style: TextStyle(
                  fontFamily: 'Product Sans',
                //fontStyle: ,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),

            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Container(
                  child: p_data(photo: 'lib/images/brd 1.png', pName: 'Britannia Bread', price: 35),
                ),
                    const SizedBox(width: 12),
                Container(
                  child: p_data(photo: 'lib/images/eegg 1.png', pName: 'Eggs', price: 120),
                ),
                const SizedBox(width: 12,),
              ],
            ),
          ),
          BottomNavigationBar(
            unselectedFontSize: 15,
            unselectedLabelStyle: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
                color: Colors.black,
            ),
            showUnselectedLabels: true,
            iconSize: 19,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home,
                color: Colors.grey,),
                label: 'Home',
                backgroundColor:Color(0XFFE8DD8B),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search,
                    color: Colors.grey),
                label: 'Search',
                //backgroundColor:  Color(0XFFE8DD8B),
              ),
              BottomNavigationBarItem(
                icon:  Icon(Icons.shopping_cart_outlined,
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
        ],
      ),
    );
  }


}