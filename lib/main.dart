import 'package:flutter/material.dart';

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
        primarySwatch: Colors.green,
      ),
      home: HomePageScreen(),
    );
  }
}
class HomePageScreen extends StatelessWidget{
  var arrColors=[
    Colors.black,
    Colors.brown,
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sushil',),
        ),
        body:GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            Container(
              color: arrColors[0],
            ),
            Container(
              color: arrColors[1],
            ),
            Container(
              color: arrColors[2],
            ),
            Container(
              color: arrColors[3],
            ),
            Container(
              color: arrColors[4],
            ),
            Container(
              color: arrColors[5],
            ),
            Container(
              color: arrColors[6],
            )
          ],
        )
    );
  }

}