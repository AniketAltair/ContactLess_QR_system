
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'display.dart';
import 'davailable.dart';


class Booking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  BuildContext dialogcontext;

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      //barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        dialogcontext=context;
        return AlertDialog(
          title: Center(child: Text('Confirm Booking ?')),
          actions: <Widget>[
            Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      RaisedButton(
                        color: Colors.green,
                        child: Text('Confirm'),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(width: 80,),
                    ],
                  ),
                  Row(
                    children: [
                      RaisedButton(
                        color: Colors.green,
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.pop(context);
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
    return new Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title:Text('Book Appointment',style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.lightGreenAccent,
        leading: IconButton(
          icon:Icon(Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop(context);
          },
        ),
      ),

      body:SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
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
                            child: const Text('Book'),
                            onPressed: () {
                              _showMyDialog();
                            },
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
                            child: const Text('Book'),
                            onPressed: () {
                              _showMyDialog();
                            },
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
                            child: const Text('Book'),
                            onPressed: () {
                              _showMyDialog();
                            },
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
                            child: const Text('Book'),
                            onPressed: () {
                              _showMyDialog();
                            },
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
                            child: const Text('Book'),
                            onPressed: () {
                              _showMyDialog();
                            },
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