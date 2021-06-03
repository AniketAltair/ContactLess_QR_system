import 'package:flutter/material.dart';


class Bookings extends StatefulWidget {
  List <bool> pressAttention=[true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,];
  int choice = 20;


  String type="";
  String d="";
  Bookings({this.type,this.d});

  @override
  _BookingsState createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {

  var slot="Slot A";
  bool slotbool=true;


  @override
  Widget build(BuildContext context) {

    DateTime currDt = DateTime.now();
    DateTime tomm = currDt.add(Duration(days: 1));

    DateTime sd;

    if(widget.d=="Today"){
      sd=currDt;
    }else{
      sd=tomm;
    }

    var month=sd.month;
    var day=sd.day;
    var week = sd.weekday;
    var weekday="";
    var hour = sd.hour;
    var min= sd.minute;

    if(week==0){weekday="Sunday";}
    else if(week==1){weekday="Monday";}
    else if(week==2){weekday="Tuesday";}
    else if(week==3){weekday="Wednesday";}
    else if(week==4){weekday="Thursday";}
    else if(week==5){weekday="Friday";}
    else if(week==6){weekday="Saturday";}

    var fulldaytime =  day.toString()+"/"+month.toString()+" , "+weekday+" ";



    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(

        title:Center(
          child:Text(widget.type,style: TextStyle(color: Colors.black)),
        ),
        backgroundColor: Colors.lightGreenAccent,
        actions:<Widget>[
          IconButton(
            icon: Icon(Icons.center_focus_weak,color: Colors.black,),onPressed: (){},
          ),
        ],

      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
             fulldaytime,style: TextStyle(color: Colors.black,fontSize: 40),
            ),
            SizedBox(
              height: 10,
            ),

            RaisedButton(
              child: Text(slot),
              textColor: Colors.white,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              color: Colors.purple,
              onPressed: (){
                setState(() {
                  slotbool=!slotbool;
                  slot=slotbool?"Slot A":"Slot B";
                  print(slot);
                });
              },
            ),

            SizedBox(height: 10,),

            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      child: new Text('Chair1'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: widget.pressAttention[0]? Colors.green : Colors.red,
                      onPressed: (){
                        print(widget.pressAttention[0]);
                        setState((){widget.pressAttention[0] = !widget.pressAttention[0];
                        if(widget.choice!=20){
                          widget.pressAttention[widget.choice] = !widget.pressAttention[widget.choice];
                        }
                        widget.choice= 0;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      child: new Text('Chair2'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: widget.pressAttention[1] ? Colors.green : Colors.red,
                      onPressed: (){
                        print(widget.pressAttention[1]);
                        setState((){widget.pressAttention[1] = !widget.pressAttention[1];
                        if(widget.choice!=20){
                          widget.pressAttention[widget.choice] = !widget.pressAttention[widget.choice];
                        }
                        widget.choice= 1;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      child: new Text('Chair3'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: widget.pressAttention[2] ? Colors.green : Colors.red,
                      onPressed: (){
                        print(widget.pressAttention[2]);
                        setState((){widget.pressAttention[2] = !widget.pressAttention[2];
                        if(widget.choice!=20){
                          widget.pressAttention[widget.choice] = !widget.pressAttention[widget.choice];
                        }
                        widget.choice= 2;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      child: new Text('Chair4'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: widget.pressAttention[3] ? Colors.green : Colors.red,
                      onPressed: (){
                        print(widget.pressAttention[3]);
                        setState((){widget.pressAttention[3] = !widget.pressAttention[3];
                        if(widget.choice!=20){
                          widget.pressAttention[widget.choice] = !widget.pressAttention[widget.choice];
                        }
                        widget.choice= 3;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      child: new Text('Chair5'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: widget.pressAttention[4]? Colors.green : Colors.red,
                      onPressed: (){
                        print(widget.pressAttention[4]);
                        setState((){widget.pressAttention[4] = !widget.pressAttention[4];
                        if(widget.choice!=20){
                          widget.pressAttention[widget.choice] = !widget.pressAttention[widget.choice];
                        }
                        widget.choice= 4;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      child: new Text('Chair6'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: widget.pressAttention[5] ? Colors.green : Colors.red,
                      onPressed: (){
                        print(widget.pressAttention[5]);
                        setState((){widget.pressAttention[5] = !widget.pressAttention[5];
                        if(widget.choice!=20){
                          widget.pressAttention[widget.choice] = !widget.pressAttention[widget.choice];
                        }
                        widget.choice= 5;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      child: new Text('Chair7'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: widget.pressAttention[6] ? Colors.green : Colors.red,
                      onPressed: (){
                        print(widget.pressAttention[6]);
                        setState((){widget.pressAttention[6] = !widget.pressAttention[6];
                        if(widget.choice!=20){
                          widget.pressAttention[widget.choice] = !widget.pressAttention[widget.choice];
                        }
                        widget.choice= 6;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      child: new Text('Chair8'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: widget.pressAttention[7] ? Colors.green : Colors.red,
                      onPressed: (){
                        print(widget.pressAttention[7]);
                        setState((){widget.pressAttention[7] = !widget.pressAttention[7];
                        if(widget.choice!=20){
                          widget.pressAttention[widget.choice] = !widget.pressAttention[widget.choice];
                        }
                        widget.choice= 7;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      child: new Text('Chair9'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: widget.pressAttention[8]? Colors.green : Colors.red,
                      onPressed: (){
                        print(widget.pressAttention[8]);
                        setState((){widget.pressAttention[8] = !widget.pressAttention[8];
                        if(widget.choice!=20){
                          widget.pressAttention[widget.choice] = !widget.pressAttention[widget.choice];
                        }
                        widget.choice= 8;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      child: new Text('Chair10'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: widget.pressAttention[9] ? Colors.green : Colors.red,
                      onPressed: (){
                        print(widget.pressAttention[9]);
                        setState((){widget.pressAttention[9] = !widget.pressAttention[9];
                        if(widget.choice!=20){
                          widget.pressAttention[widget.choice] = !widget.pressAttention[widget.choice];
                        }
                        widget.choice= 9;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      child: new Text('Chair11'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: widget.pressAttention[10] ? Colors.green : Colors.red,
                      onPressed: (){
                        print(widget.pressAttention[10]);
                        setState((){widget.pressAttention[10] = !widget.pressAttention[10];
                        if(widget.choice!=20){
                          widget.pressAttention[widget.choice] = !widget.pressAttention[widget.choice];
                        }
                        widget.choice= 10;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      child: new Text('Chair12'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: widget.pressAttention[11] ? Colors.green : Colors.red,
                      onPressed: (){
                        print(widget.pressAttention[11]);
                        setState((){widget.pressAttention[11] = !widget.pressAttention[11];
                        if(widget.choice!=20){
                          widget.pressAttention[widget.choice] = !widget.pressAttention[widget.choice];
                        }
                        widget.choice= 11;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      child: new Text('Chair13'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: widget.pressAttention[12]? Colors.green : Colors.red,
                      onPressed: (){
                        print(widget.pressAttention[12]);
                        setState((){widget.pressAttention[12] = !widget.pressAttention[12];
                        if(widget.choice!=20){
                          widget.pressAttention[widget.choice] = !widget.pressAttention[widget.choice];
                        }
                        widget.choice= 12;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      child: new Text('Chair14'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: widget.pressAttention[13] ? Colors.green : Colors.red,
                      onPressed: (){
                        print(widget.pressAttention[13]);
                        setState((){widget.pressAttention[13] = !widget.pressAttention[13];
                        if(widget.choice!=20){
                          widget.pressAttention[widget.choice] = !widget.pressAttention[widget.choice];
                        }
                        widget.choice= 13;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      child: new Text('Chair15'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: widget.pressAttention[14] ? Colors.green : Colors.red,
                      onPressed: (){
                        print(widget.pressAttention[14]);
                        setState((){widget.pressAttention[14] = !widget.pressAttention[14];
                        if(widget.choice!=20){
                          widget.pressAttention[widget.choice] = !widget.pressAttention[widget.choice];
                        }
                        widget.choice= 14;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      child: new Text('Chair16'),
                      textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: widget.pressAttention[15] ? Colors.green : Colors.red,
                      onPressed: (){
                        print(widget.pressAttention[15]);
                        setState((){widget.pressAttention[15] = !widget.pressAttention[15];
                        if(widget.choice!=20){
                          widget.pressAttention[widget.choice] = !widget.pressAttention[widget.choice];
                        }
                        widget.choice= 15;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text(
              'Tap green seats to confirm your bookings. Once Confirmed, bookings cannot be cancelled.',style: TextStyle(color: Colors.black,fontSize: 15),
            ),
            SizedBox(height: 10,),
            RaisedButton(
              onPressed: () {
                print("confirmed");
                Navigator.pop(context);
              },
              textColor: Colors.white,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              color: Colors.purple,
              child: const Text('Confirm', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}


