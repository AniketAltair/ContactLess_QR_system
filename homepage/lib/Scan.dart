import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Scan extends StatefulWidget {

  final String text;

  Scan({Key key, @required this.text}) : super(key: key);

  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {



  var rollno ="me19b005";
  var mess="RR caterers - Himalayas";
  var slot="Slot- A";
  var tableno = "Table-5";
  var seatno="Chair-1";
  var Extras="Chicken_65 Quantity: 2 ; fishfry Qunatity: 1";

  var docname="Dr.Ajay";
  var Date="10/03/2021";
  var Time="15:50";

  var data="";




// Add dependency
// qr_flutter: ^3.1.0  in pubsec.yaml

  @override
  Widget build(BuildContext context) {

    final String n = widget.text;

    if(n=="mess"){
      data="RollNo.:"+rollno+" "+"Mess: "+mess+" "+"Slot: "+slot+" "+"Table Number: "+tableno+" "+"Seat Number: "+seatno+" "+"Extras: "+Extras+" ";
    }
    else{
      data="RollNo.:"+rollno+" "+"Doctor: "+docname+" "+"Date: "+Date+" "+"Time: "+Time+" ";
    }

    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(

        title:Center(
          child:Text("Scanner",style: TextStyle(color: Colors.black)),
        ),
        backgroundColor: Colors.lightGreenAccent,


      ),
      body:Column(
        children: <Widget>[
          SizedBox(height: 50,),
          Text("Scan The Code For Verification",style: TextStyle(fontSize: 30,color: Colors.purple)),
          SizedBox(height: 150,),
          Center(
            child: QrImage(
              backgroundColor: Colors.white,
              data: data ,
              version: QrVersions.auto,
              size: 200.0,
            ),
          ),
        ],
      ),


    );
  }
}
