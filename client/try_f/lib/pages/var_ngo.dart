import 'package:flutter/material.dart';

class r_ngo_data extends StatefulWidget {
  final rName;
  final date;
  final int persons;
  final Address;
  final int phone;
  final logo;
  const r_ngo_data(
      {required this.rName,
      required this.persons,
      required this.Address,
      required this.phone,
      required this.date,
      required this.logo});
  @override
  State<r_ngo_data> createState() => _r_ngo_dataState();
}

void _showDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('REQUEST'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "REJECT",
                    style: TextStyle(color: Colors.red),
                  ),
                )),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "ACCEPT",
                    style: TextStyle(color: Colors.green.shade600),
                  ),
                ))
          ],
        );
      });
}

class _r_ngo_dataState extends State<r_ngo_data> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 10, 3, 10),
      height: 120,
      width: 394,
      decoration: BoxDecoration(
          color: Color(0XFFe5e298), borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
        onPressed: () {
          _showDialog(context);
        },
        color: Color(0XFFe5e298),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 120,
              width: 147,
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                image: new AssetImage(widget.logo),
                fit: BoxFit.fill,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: Text(
                      widget.rName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Persons: ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        widget.persons.toString(),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Row(
                      children: [
                        Text(
                          "Date: ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          widget.date,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Row(
                      children: [
                        Text(
                          "Address: ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          widget.Address,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Row(
                      children: [
                        Text(
                          "Phone: ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          widget.phone.toString(),
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
