import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  var nameFromHome;
  SecondScreen(this.nameFromHome){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          child: Text("Hi ${nameFromHome} are on the next Screen",style: TextStyle(fontSize: 30),)),
      ),
    );
  }
}