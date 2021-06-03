import 'package:flutter/material.dart';

class orders extends StatefulWidget {
  @override
  _ordersState createState() => _ordersState();
}

class _ordersState extends State<orders> {

  List <int>_itemCount = [0,0,0,0];
  List <bool> valuefirst = [false,false,false,false];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(

        title:Center(
          child:Text("Extras",style: TextStyle(color: Colors.black)),
        ),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: SingleChildScrollView(
        child: Column(

          children: <Widget>[
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
              child: const Text('Buy', style: TextStyle(fontSize: 20)),
            ),

            GestureDetector(
              onTap: (){
                print("Lunch");

              },
              child: Card(
                color: Colors.yellow,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/Images/Chicken_65.jpg',height: 300,width: 400),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 120,),
                        Checkbox(
                          hoverColor: Colors.white,
                          checkColor: Colors.greenAccent,
                          activeColor: Colors.red,
                          value: this.valuefirst[0],
                          onChanged: (bool value) {
                            setState(() {
                              this.valuefirst[0] = value;
                            });
                          },
                        ),
                        SizedBox(width: 50,),
                        _itemCount[0]!=0? new  IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCount[0]--),):new Container(),
                        new Text(_itemCount[0].toString()),
                        new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>_itemCount[0]++))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                print("Lunch");

              },
              child: Card(
                color: Colors.yellow,
                child: Column(
                  children: <Widget>[
                      Image.asset('assets/Images/Mutton.jpg',height: 300,width: 400),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 120,),
                        Checkbox(
                          hoverColor: Colors.white,
                          checkColor: Colors.greenAccent,
                          activeColor: Colors.red,
                          value: this.valuefirst[1],
                          onChanged: (bool value) {
                            setState(() {
                              this.valuefirst[1]= value;
                            });
                          },
                        ),
                        SizedBox(width: 50,),
                        _itemCount[1]!=0? new  IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCount[1]--),):new Container(),
                        new Text(_itemCount[1].toString()),
                        new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>_itemCount[1]++))
                      ],
                    ),
                  ],
            ),
              ),
            ),

            GestureDetector(
              onTap: (){
                print("Lunch");

              },
              child: Card(
                color: Colors.yellow,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/Images/eggs.jpg',height: 300,width: 400),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 120,),
                        Checkbox(
                          hoverColor: Colors.white,
                          checkColor: Colors.greenAccent,
                          activeColor: Colors.red,
                          value: this.valuefirst[2],
                          onChanged: (bool value) {
                            setState(() {
                              this.valuefirst[2] = value;
                            });
                          },
                        ),
                        SizedBox(width: 50,),
                        _itemCount[2]!=0? new  IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCount[2]--),):new Container(),
                        new Text(_itemCount[2].toString()),
                        new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>_itemCount[2]++))
                      ],
                    ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                print("Lunch");

              },
              child: Card(
                color: Colors.yellow,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/Images/fishfry.png',height: 300,width: 400),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 120,),
                        Checkbox(
                          hoverColor: Colors.white,
                          checkColor: Colors.greenAccent,
                          activeColor: Colors.red,
                          value: this.valuefirst[3],
                          onChanged: (bool value) {
                            setState(() {
                              this.valuefirst[3] = value;
                            });
                          },
                        ),
                        SizedBox(width: 50,),
                        _itemCount[3]!=0? new  IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCount[3]--),):new Container(),
                        new Text(_itemCount[3].toString()),
                        new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>_itemCount[3]++))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
