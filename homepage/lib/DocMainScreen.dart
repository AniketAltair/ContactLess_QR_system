// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:homepage/Appointments.dart';
import 'package:homepage/Complaints.dart';
import 'package:homepage/StaffID.dart';
import 'package:homepage/VerifyStudentScan.dart';
import 'package:homepage/docdatetime.dart';

class DocMainScreen extends StatefulWidget {
  @override
  _DocMainScreenState createState() => _DocMainScreenState();
}

class _DocMainScreenState extends State<DocMainScreen> {
  @override

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();





  Widget build(BuildContext context) {



    return MaterialApp(
      title: 'Doc Screen',
      home: Scaffold(
        backgroundColor: Colors.pink[100],
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Welcome Doc',style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.lightGreenAccent,
          leading: IconButton(
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
          actions:<Widget>[
            IconButton(
              icon: Icon(Icons.center_focus_weak,color: Colors.black,),
              onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>verifyScan()));},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                RaisedButton(
                  child: new Text('Availability'),
                  textColor: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  color: Colors.pink,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Docdatetime()));
                  },
                ),
                SizedBox(height: 10),
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
                            Text('Date: 12/03/2021  Time: 15:30'),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          RaisedButton(
                            child: const Text('Accept'),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 8),
                          RaisedButton(
                            child: const Text('Decline'),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
                SizedBox(height: 10),
                Center(
                  child: Card(
                    color: Colors.yellow,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.album),
                          title: Text('Student1',style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Column(
                            children: [
                              Text('Roll No. : me19b023'),
                              Text('smail: me19b023@smail.iitm.ac.in'),
                              Text('Contact Number: 1234593775'),
                              Text('Date: 16/03/2021  Time: 16:30'),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            RaisedButton(
                              child: const Text('Accept'),
                              onPressed: () {},
                            ),
                            const SizedBox(width: 8),
                            RaisedButton(
                              child: const Text('Decline'),
                              onPressed: () {},
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
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
                              Text('Roll No. : me19b022'),
                              Text('smail: me19b022@smail.iitm.ac.in'),
                              Text('Contact Number: 8111193775'),
                              Text('Date: 4/07/2021  Time: 12:30'),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            RaisedButton(
                              child: const Text('Accept'),
                              onPressed: () {},
                            ),
                            const SizedBox(width: 8),
                            RaisedButton(
                              child: const Text('Decline'),
                              onPressed: () {},
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Card(
                    color: Colors.yellow,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.album),
                          title: Text('Student3',style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Column(
                            children: [
                              Text('Roll No. : me19b045'),
                              Text('smail: me19b045@smail.iitm.ac.in'),
                              Text('Contact Number: 8275233775'),
                              Text('Date: 1/05/2021  Time: 5:30'),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            RaisedButton(
                              child: const Text('Accept'),
                              onPressed: () {},
                            ),
                            const SizedBox(width: 8),
                            RaisedButton(
                              child: const Text('Decline'),
                              onPressed: () {},
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
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
                              child: const Text('Accept'),
                              onPressed: () {},
                            ),
                            const SizedBox(width: 8),
                            RaisedButton(
                              child: const Text('Decline'),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DocID()));
                },
              ),
              ListTile(
                title: Text('Appointments'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>appointments()));
                },
              ),
              ListTile(
                title: Text('Complaints'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>complaints()));
                },
              ),
              ListTile(
                title: Text('Log-out'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

      ),
    );
  }


}




