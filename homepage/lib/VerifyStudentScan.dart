import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class verifyScan extends StatefulWidget {
  @override
  _verifyScanState createState() => _verifyScanState();
}

class _verifyScanState extends State<verifyScan> {

  String _data="";


_scan() async {

  await FlutterBarcodeScanner.scanBarcode("#000000", "cancel", true, ScanMode.BARCODE).then((value) => setState(()=>_data = value));

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Barcode scan')),
            body: Builder(builder: (BuildContext context) {
              return Container(
                  alignment: Alignment.center,
                  child: Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(child: Text("Scan Qr Code"),
                        onPressed: ()=>_scan(),),
                        Text(_data,style: TextStyle(color: Colors.black),),
                      ]));
            })));
  }


}
