import 'package:flutter/material.dart';

class appointments extends StatefulWidget {
  @override
  _appointmentsState createState() => _appointmentsState();
}

class _appointmentsState extends State<appointments> {
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
                    title: Text('Aniket Katakdhond',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Column(
                      children: [
                        Text('Roll No. : me19b005'),
                        Text('smail: me19b005@smail.iitm.ac.in'),
                        Text('Contact Number: 8275493775'),
                        Text('Date: 4/02/2021  Time: 11:30'),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton(
                        child: const Text('View Past Records'),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                      RaisedButton(
                        child: const Text('Done'),
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
                    title: Text('Student2',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Column(
                      children: [
                        Text('Roll No. : me19b008'),
                        Text('smail: me19b008@smail.iitm.ac.in'),
                        Text('Contact Number: 527645775'),
                        Text('Date: 21/03/2021  Time: 13:30'),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton(
                        child: const Text('View Past Records'),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                      RaisedButton(
                        child: const Text('Done'),
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
                    title: Text('Student4',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Column(
                      children: [
                        Text('Roll No. : me19b006'),
                        Text('smail: me19b006@smail.iitm.ac.in'),
                        Text('Contact Number: 8275444775'),
                        Text('Date: 2/03/2021  Time: 14:30'),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton(
                        child: const Text('View Past Records'),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                      RaisedButton(
                        child: const Text('Done'),
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
