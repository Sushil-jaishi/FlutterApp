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
        body:Column(
          //usage pf Row widget is also similar as column widget
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            )
          ],
        )
    );
  }

}