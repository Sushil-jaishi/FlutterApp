import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutterapp/secondScreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hello',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: HomePageScreen(),
    );
  }
}

class HomePageScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageScreenState();
  }

}

class HomePageScreenState extends State<HomePageScreen>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Sushil'),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.green,
          ),
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.yellow,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondScreen();
            },));
          },
              child:Text("click here")
          )

        ],
      )
    );
  }

}