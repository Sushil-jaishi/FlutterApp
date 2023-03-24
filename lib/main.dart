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
      body:RichText(
          text:TextSpan(
            style: TextStyle(fontSize: 30,color: Colors.green),
            children: [
              TextSpan(
                text: 'hello '
              ),
              TextSpan(
                text: 'Sushil',
                style: TextStyle(fontSize: 40, color: Colors.blue)
              )
            ]
          )
      )
    );
  }

}