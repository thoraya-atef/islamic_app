import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title : Text("FirstScreen"),
        ),
        body:Center(
          child:Text("FirstScreen",
              style : TextStyle(fontSize: 18.0)),
        )
    );
  }
}