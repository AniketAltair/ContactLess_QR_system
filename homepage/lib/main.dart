import 'package:flutter/material.dart';
import 'package:homepage/Bookings.dart';
import 'package:homepage/Complaints.dart';
import 'package:homepage/DocMainScreen.dart';
import 'package:homepage/Mess.dart';
import 'package:homepage/Orders.dart';
import 'package:homepage/Scan.dart';
import 'package:homepage/eid.dart';
import 'package:image_picker/image_picker.dart';
import 'package:animated_background/animated_background.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      //barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: Text('Who Are U?')),
          actions: <Widget>[
            Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      RaisedButton(
                        color: Colors.green,
                        child: Text('IITM Student'),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> mess()));
                        },
                      ),
                      SizedBox(width: 80,),
                    ],
                  ),
                  Row(
                    children: [
                      RaisedButton(
                        color: Colors.green,
                        child: Text('IITM Staff'),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> DocMainScreen()));
                        },
                      ),
                      SizedBox(width: 80,),
                    ],
                  ),
                ],
              ),
            ),

          ],
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Images/Himalayas.jpg"),
                fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child:Image.asset(
                'assets/Images/Qkres.png',
                height: 100.0,
                width: 100.0,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30.0,10.0,0.0,0.0),
              child: Text(
                'Welcome',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40.0, 0.0 , 0.0, 0.0),
              child: Text(
                'abroad',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(45.0, 20.0 , 0.0, 0.0),
              child: Text(
                'hey folk,',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40.0, 0.0 , 0.0, 0.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Sign in',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      ' here',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ]
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(70.0, 20.0 , 0.0, 0.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'with',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      _showMyDialog();
                    },
                    child: CircleAvatar(
                      radius: 70,
                      child: ClipOval(child: Image.asset('assets/Images/logo.jpg', height: 150, width: 150, fit: BoxFit.cover,),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "[ Sign In with your smail account ]",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Container(
                  padding:EdgeInsets.fromLTRB(110.0, 30.0, 0.0, 0.0),
                  child: Image.asset(
                    'assets/Images/Madras_Logo.png',
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );


  }
}
