import 'package:flutter/material.dart';
import 'dart:ui';
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
      body:Stack(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
          ),
          Positioned(
            top: 30,
            bottom: 30,
            left: 30,
            right: 30,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          )
        ],
      )
    );
  }

}