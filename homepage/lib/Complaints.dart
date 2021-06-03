import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class complaints extends StatefulWidget {
  @override
  _complaintsState createState() => _complaintsState();
}

class _complaintsState extends State<complaints> {

  File imageFile;
  List<String> images=[];

  var pathofimage="assets/Images/Insert.png";


  _openGallary(BuildContext context) async{
    print("##################################*********************");
    // ignore: deprecated_member_use
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    print("+++++++++++++++++++++++++++++");
    this.setState(() {
      imageFile=picture;
      print(imageFile.path);
      setState(() {
        pathofimage=imageFile.path;
      });
      images.add(imageFile.path);
    });
    Navigator.pop(context,imageFile);
  }



  Future<void> _showChoiceDialog(BuildContext context){
    return showDialog(context: context,builder: (BuildContext context){
      return AlertDialog(
          content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text("GALLARY"),
                    onTap: (){
                      _openGallary(context);
                    },
                  )
                ],
              )
          )
      );
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      backgroundColor: Colors.pink[100],
      appBar: AppBar(

        title:Center(
          child:Text("Complaints",style: TextStyle(color: Colors.black)),
        ),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Column(
        children: <Widget>[

          Expanded(child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.black54, Color.fromRGBO(0, 41, 102, 1)]
                )
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Stack(
                    children: <Widget>[
                      GestureDetector(
                        child: pathofimage!="assets/Images/Insert.png"?
                        Image.file(File(pathofimage),width: 200,height: 200):
                        Image.asset("assets/Images/Insert.png",height: 300,width: 400,),
                        onTap: (){
                          _showChoiceDialog(context);
                        },
                      )

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                  child: Container(
                    height: 60,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Title",
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.white70)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                  child: Container(
                    height: 60,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(

                            border: InputBorder.none,
                            hintText: "Main Issues",
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.white70)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                  child: Container(
                    height: 60,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Suggestions",
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.white70)),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container( height: 70, width: 200,
                      child: Align( child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                          child: Text('Send', style: TextStyle(color: Colors.white70, fontSize: 20),)),),
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),)
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),

        ],
      )
    );
  }
}
