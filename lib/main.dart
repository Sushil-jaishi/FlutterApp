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
        body:ListView(
          scrollDirection: Axis.vertical,
          reverse: true,
          children: [
            Container(
              width: 300,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.yellow,
            ),
          ],
        )
    );
  }

}