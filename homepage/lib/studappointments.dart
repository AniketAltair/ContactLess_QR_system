import 'package:flutter/material.dart';
import 'package:homepage/Scan.dart';

class studappointments extends StatefulWidget {
  @override
  _studappointmentsState createState() => _studappointmentsState();
}

class _studappointmentsState extends State<studappointments> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(

        title:Center(
          child:Text("Appointments",style: TextStyle(color: Colors.black)),
        ),
        backgroundColor: Colors.lightGreenAccent,


      ),
      body:Column(
        children: <Widget>[
          Center(
            child: Card(
              color: Colors.yellow,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.album),
                    title: Text('Dr.Ajay',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Column(
                      children: [
                        Text('Adambakkam'),
                        Text('Date: 12/03/2021'),
                        Text('Time: 15:50'),
                        Text('Status: Appointment accepted',style: TextStyle(fontSize: 20,color: Colors.black)),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton(
                        child: const Text('QR code'),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Scan(text:"doc")));
                        },
                      ),
                      const SizedBox(width: 8),
                      RaisedButton(
                        child: const Text('Cancel Appointment'),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),

                    ],
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Card(
              color: Colors.yellow,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.album),
                    title: Text('Dr.Naveen',style: TextStyle(fontWeight: FontWeight.bold,),),
                    subtitle: Column(
                      children: [
                        Text('Shollinganalur'),
                        Text('Date: 15/10/2021'),
                        Text('Time: 16:30'),
                        Text('Status: Appointment waiting to be accepted',style: TextStyle(fontSize: 20,color: Colors.black),),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton(
                        child: const Text('Cancel Appointment'),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),

                    ],
                  ),
                ],
              ),
            ),
          ),

        ],
      ),


    );
  }
}
