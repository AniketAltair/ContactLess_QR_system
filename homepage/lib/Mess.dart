import 'package:flutter/material.dart';
import 'package:homepage/About.dart';

import 'package:homepage/Bookings.dart';
import 'package:homepage/Complaints.dart';

import 'package:homepage/Orders.dart';
import 'package:homepage/Scan.dart';
import 'package:homepage/davailable.dart';
import 'package:homepage/eid.dart';

class mess extends StatefulWidget {
  @override
  _messState createState() => _messState();
}

class _messState extends State<mess> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


  var day="Today";

  @override
  Widget build(BuildContext context) {

    var currDt = DateTime.now();
    print("##################");

    var wish = "";
    if(day=="Tomorrow"){
      wish="For Tomorrow";
    }

    print(day);
    List <bool> widvis=[true,true,true,true];


    if(day=="Today") {
      print("@@@@@@@@@@@@@@@@2");


      if (currDt.hour < 11) {
        wish = "Good Morning";
      } else if (currDt.hour >= 11 && currDt.hour < 15) {
        wish = "Good Afternoon";
        widvis[0] = false;
      } else if (currDt.hour >= 15 && currDt.hour < 18) {
        wish = "Good Evening";
        widvis[0] = false;
        widvis[1] = false;
      } else if (currDt.hour >= 18 && currDt.hour < 21) {
        wish = "Good Evening";
        widvis[0] = false;
        widvis[1] = false;
        widvis[2] = false;
      } else {
        wish = "Good Bye, Today's Menu over";
        widvis[0] = false;
        widvis[1] = false;
        widvis[2] = false;
        widvis[3] = false;
      }
    }



    return Scaffold(

      key: _scaffoldKey,
      backgroundColor: Colors.pink[100],
      appBar: AppBar(

        title:Center(
          child:Text("Home Page",style: TextStyle(color: Colors.black)),
        ),
        backgroundColor: Colors.lightGreenAccent,
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
        actions:<Widget>[
          IconButton(
            icon: Icon(Icons.center_focus_weak,color: Colors.black,),
            onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>Scan(text:"mess")));},
          ),
        ],

      ),
      body:

      SingleChildScrollView(
        child: Column(

          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              wish,style: TextStyle(color: Colors.black,fontSize: 40),
            ),
            Row(

              children: [
                SizedBox(
                  width: 30,
                ),
                GestureDetector(

                  onTap: (){

                    setState(() {
                      day="Today";
                    });

                  },
                  child: Card(
                    child:Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Today',
                        style: TextStyle(
                            color: Colors.black,fontSize: 25
                        ) ,
                      ),
                    ),
                    elevation: 10,

                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: (){


                    setState(() {
                      day="Tomorrow";
                      widvis[0]=true;
                      widvis[1]=true;
                      widvis[2]=true;
                      widvis[3]=true;
                    });

                  },
                  child: Card(
                    child:Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Tomorrow',
                        style: TextStyle(
                            color: Colors.black,fontSize: 25
                        ) ,
                      ),
                    ),
                    elevation: 10,

                  ),
                ),
              ],
            ),
            Text("_____________________________________________",
              style: TextStyle(fontSize: 20,color: Colors.white),
            ),

            widvis[0]?
            GestureDetector(

              onTap: (){
                print("Breakfast");
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Bookings(type:"Breakfast",d:day)));
              },
              child:  Card(
                color: Colors.yellow,
                child: Image.asset('assets/Images/Breakfast.jpg',height: 300,width: 400,),
              ),
            ):Container(),
            widvis[1]?
            GestureDetector(
              onTap: (){
                print("Lunch");
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Bookings(type:"Lunch",d:day)));
              },
              child: Card(
                color: Colors.yellow,
                child: Image.asset('assets/Images/Lunch.jpg',height: 300,width: 400,),
              ),
            ):Container(),
            widvis[2]?
            GestureDetector(
              onTap: (){
                print("snacks");
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Bookings(type:"Snacks",d:day)));
              },
              child: Card(
                color: Colors.yellow,
                child:  Image.asset('assets/Images/Snacks.jpg',height: 300,width: 400,),
              ),
            ):Container(),
            widvis[3]?
            GestureDetector(
              onTap: (){
                print("Dinner");
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Bookings(type:"Dinner",d:day)));
              },
              child: Card(
                color: Colors.yellow,
                child: Image.asset('assets/Images/Dinner.jpg',height: 300,width: 400,),
              ),
            ):Container(),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child:Column(
                children: <Widget>[
                  Text("Qkres",style: TextStyle(fontSize: 40),),
                  Image.asset(
                    "assets/Images/Qkres.png",
                    height: 90,width: 90,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.green,
              ),

            ),
            ListTile(
              title: Text('E-id'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> eid()));
              },
            ),
            ListTile(
              title: Text('Extras'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> orders()));
              },
            ),
            ListTile(
              title: Text('IITM Hospital'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Davailable()));
              },
            ),
            ListTile(
              title: Text('Complaints'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> complaints()));
              },
            ),
            ListTile(
              title: Text('About/Help'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> IntroScreen()));
              },
            ),
            ListTile(
              title: Text('Log-out'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),


    );
  }
}
