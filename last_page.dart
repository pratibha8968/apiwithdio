import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_bar.dart';

class LastPage extends StatefulWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  int? simpleIntInput;
  String? select;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: mainBuild(),
    );
  }
  mainBuild() {
    return SingleChildScrollView(
        child: Column(
        // mainAxisSize: MainAxisSize.max,
        children: [
        Padding(
        padding: const EdgeInsets.only(top: 10.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "CheckOut",
    style: TextStyle(fontSize: 20.0),
    ),
    Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Icon(Icons.circle),
    Icon(Icons.circle),
    Icon(Icons.circle),
    ],
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Text("Shopping"),
    Text("Payment"),
    Text("Review"),
    ],
    ),
    ),

    Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5.0),
    border: Border.all(width: 1.0),
    ),
    child: Padding(
    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Text(
    "Show Card Details",
    style: TextStyle(
    color: Colors.lightBlue,
    fontWeight: FontWeight.bold),
    ),
    Text(
    "530/-",
    style: TextStyle(
    color: Colors.lightBlue,
    fontWeight: FontWeight.bold),
    ),
    Icon(Icons.arrow_downward),
    ],
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(
    top: 20.0, bottom: 10.0, left: 10.0, right: 320.0),
    child: Text(
    "E-mail",
    ),
    ),
    Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5.0),
    border: Border.all(width: 1.0),
    ),
    child: TextFormField(
    decoration: InputDecoration(
    labelText: "priya@gmail.com",
    ),
    ),
    ),
        // Account details
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Already have an account?"),
              Text(
                "LogIn",
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        // Personal details
        Padding(
        padding: const EdgeInsets.only(
        top: 10.0, bottom: 15.0, left: 10.0, right: 320.0),
    //   children: [
    child: Text(
    "NAME",
    ),
        ),
        Container(
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(width: 1.0),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Roman Alarcon",
            ),
          ),
        ),
        Padding(
        padding: EdgeInsets.only(
        top: 15.0, bottom: 15.0, left: 10.0, right: 320.0),
    //   children: [
    child: Text(
    "Address",
    ),
    ),
    Container(
    height: 50.0,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5.0),
    border: Border.all(width: 1.0),
    ),
    child: TextFormField(
    decoration: InputDecoration(
    labelText: "Address",
    ),
    ),
    ),
    Padding(
    padding: EdgeInsets.only(
    top: 15.0, bottom: 15.0, left: 10.0, right: 250.0),
    //   children: [
    child: Text(
    "Reference Contact(optional)",
    ),
    ),
    Container(
    height: 50.0,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5.0),
    border: Border.all(width: 1.0),
    ),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "Reference Contact",
        ),
      ),
    ),
    ],
    ),
        ),
        ]),
    );
  }
}