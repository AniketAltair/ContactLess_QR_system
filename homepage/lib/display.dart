import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class Display extends StatefulWidget {
  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[400],
        ),
        body:Container(
          padding:EdgeInsets.all(20.0),
          child:Text('Your slot has been booked successfully!',
            style:TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
        )
    );
  }
}