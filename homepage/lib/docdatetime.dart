import 'package:flutter/material.dart';
import 'package:homepage/choose.dart';

class Docdatetime extends StatefulWidget {
  @override
  _DocdatetimeState createState() => _DocdatetimeState();
}

class _DocdatetimeState extends State<Docdatetime> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[100],
        key: _scaffoldKey,
        appBar: AppBar(
          title: Center(child: Text('Dates & Time',style: TextStyle(color: Colors.black))),
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                RaisedButton(
                  child: new Text('Add Date & Time'),
                  textColor: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  color: Colors.pink,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Choose()));
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
                          leading: Icon(Icons.calendar_today),
                          title: Text('01/03/2021',style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Column(
                            children: [
                              Text('Time : 13:30 - 17:00'),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            RaisedButton(
                              child: const Text('Edit'),
                              onPressed: () {},
                            ),
                            const SizedBox(width: 8),
                            RaisedButton(
                              child: const Text('Remove'),
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
                          leading: Icon(Icons.calendar_today),
                          title: Text('12/04/2021',style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Column(
                            children: [
                              Text('Time : 15:50 - 18:00'),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            RaisedButton(
                              child: const Text('Edit'),
                              onPressed: () {},
                            ),
                            const SizedBox(width: 8),
                            RaisedButton(
                              child: const Text('Remove'),
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
                          leading: Icon(Icons.calendar_today),
                          title: Text('12/11/2021',style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Column(
                            children: [
                              Text('Time : 12:30 - 15:00'),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            RaisedButton(
                              child: const Text('Edit'),
                              onPressed: () {},
                            ),
                            const SizedBox(width: 8),
                            RaisedButton(
                              child: const Text('Remove'),
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
                          leading: Icon(Icons.calendar_today),
                          title: Text('21/12/2021',style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Column(
                            children: [
                              Text('Time : 10:00 - 13:00'),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            RaisedButton(
                              child: const Text('Edit'),
                              onPressed: () {},
                            ),
                            const SizedBox(width: 8),
                            RaisedButton(
                              child: const Text('Remove'),
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
                          leading: Icon(Icons.calendar_today),
                          title: Text('03/10/2021',style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Column(
                            children: [
                              Text('Time : 16:30 - 17:30'),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            RaisedButton(
                              child: const Text('Edit'),
                              onPressed: () {},
                            ),
                            const SizedBox(width: 8),
                            RaisedButton(
                              child: const Text('Remove'),
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

    );
  }
}
