import 'package:flutter/material.dart';
import 'package:try_f/Variables/var_ngo.dart';

class ngo_page extends StatefulWidget {
  const ngo_page({Key? key}) : super(key: key);

  @override
  State<ngo_page> createState() => _ngo_pageState();
}

class _ngo_pageState extends State<ngo_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text('For You',
                style: TextStyle(
                  fontFamily: 'Production Sans',
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 3),
            child: Text('Random Address',
                style: TextStyle(
                  fontFamily: 'Production Sans',
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600)),
          ),
          Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  DefaultTabController(
                      length: 3, // length of tabs
                      initialIndex: 0,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 30, 5, 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10)),
                              child: TabBar(
                                labelColor: Colors.indigo,
                                unselectedLabelColor: Colors.black,
                                tabs: [
                                  Tab(text: 'Expired'),
                                  Tab(text: 'Active'),
                                  Tab(text: 'Approved'),
                                ],
                              ),
                            ),
                            Container(
                                height: 400,
                                //margin: EdgeInsets.fromLTRB(2, top, right, bottom),//height of TabBarView
                                decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color: Colors.grey, width: 0.5))),
                                child: TabBarView(children: <Widget>[
                                  Container(
                                    child: Center(
                                      child: Text(' NO EXPIRED REQUESTS!',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: 394,
                                        height: 193,
                                        child: r_ngo_data(
                                            rName: 'Pind Balluchi',
                                            persons: 10,
                                            Address: 'Sector-62',
                                            phone: 981123456,
                                            date: '2022/03/29',
                                            logo: 'assets/rlogo1.png'),
                                      ),
                                      SizedBox(
                                        width: 394,
                                        height: 193,
                                        child: r_ngo_data(
                                            rName: 'HL Restraunt',
                                            persons: 20,
                                            Address: 'Sector-62',
                                            phone: 981123456,
                                            date: '2022/03/29',
                                            logo: 'assets/rlogo2.png'),
                                      ),
                                    ],
                                  ),
                                  Column(
                                      children: [
                                        SizedBox(
                                          width: 394,
                                          height: 193,
                                          child: r_ngo_data(
                                              rName: 'Shahi Zaika',
                                              persons: 10,
                                              Address: 'Sector-12',
                                              phone: 9764534526,
                                              date: '2022/01/18',
                                              logo: 'assets/zaika.png'),
                                        ),
                                      ]
                                  ),

                                ],
                                )
                            ),
                          ]
                      )
                  ),
                ]
            ),
          ),
        ],
      ),
    );
  }
}