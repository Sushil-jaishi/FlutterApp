import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          child: Text("You are on the next Screen",style: TextStyle(fontSize: 30),)),
      ),
    );
  }
}