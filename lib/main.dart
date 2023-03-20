import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello',
      theme: ThemeData( primarySwatch: Colors.green),
      home: HomePageScreen(),
    );
  }
}
class HomePageScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sushil'),
        ),
        body:Container(
          margin: EdgeInsets.all(10),
          color: Colors.green,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text('Sushil',style: TextStyle(fontSize: 30),),
          ),
        )
    );
  }

}