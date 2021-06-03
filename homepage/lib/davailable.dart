import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homepage/studappointments.dart';
import 'booking.dart';

class Davailable extends StatefulWidget {
  @override
  _DavailableState createState() => _DavailableState();
}

class _DavailableState extends State<Davailable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title:Text('Doctors available',style: TextStyle(color: Colors.black)),
        actions:<Widget>[
          IconButton(
            icon: Icon(Icons.calendar_today,color: Colors.black,),
            onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>studappointments()));},
          ),
        ],
      ),
      body:Column(
        children:<Widget>[
          SizedBox(
            height: 10,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.yellow,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.account_box, size: 70,color: Colors.black,),
                  title: Text(
                      'Dr.Ajay',
                      style: TextStyle(fontSize: 20.0,color: Colors.black)
                  ),
                  subtitle: Text(
                      'Adambakkam',
                      style: TextStyle(fontSize: 15.0,color: Colors.black)
                  ),
                ),
                FlatButton(
                  color: Colors.pink[200],
                  child: const Text('Book Appointment',
                    style:TextStyle(
                      color:Colors.black,
                    ),),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Booking()));},
                ),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.yellow,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.account_box, size: 70,color: Colors.black),
                  title: Text(
                      'Dr.Kumar',
                      style: TextStyle(fontSize: 20.0,color: Colors.black)
                  ),
                  subtitle: Text(
                      'Tnagar',
                      style: TextStyle(fontSize: 15.0,color: Colors.black)
                  ),
                ),
                FlatButton(
                  color: Colors.pink[200],
                  child: const Text('Book Appointment',
                    style:TextStyle(
                      color:Colors.black,
                    ),),
                  onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Booking()));},
                ),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.yellow,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.account_box, size: 70,color: Colors.black),
                  title: Text(
                      'Dr.Naveen',
                      style: TextStyle(fontSize: 20.0,color: Colors.black)
                  ),
                  subtitle: Text(
                      'Shollinganalur',
                      style: TextStyle(fontSize: 15.0,color: Colors.black)
                  ),
                ),
                FlatButton(
                  color: Colors.pink[200],
                  child: const Text('Book Appointment',
                    style:TextStyle(
                      color:Colors.black,
                    ),),
                  onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Booking()));},
                ),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.yellow,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.account_box, size: 70,color: Colors.black),
                  title: Text(
                      'Dr.Ashwin',
                      style: TextStyle(fontSize: 20.0,color: Colors.black)
                  ),
                  subtitle: Text(
                      'Guindy',
                      style: TextStyle(fontSize: 15.0,color: Colors.black)
                  ),
                ),
                FlatButton(
                  color: Colors.pink[200],
                  child: const Text('Book Appointment',
                    style:TextStyle(
                      color:Colors.black,
                    ),),
                  onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Booking()));},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}