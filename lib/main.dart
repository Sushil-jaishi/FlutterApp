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
        body:Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 50,
                height: 100,
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 50,
                height: 100,
                color: Colors.yellow,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: 50,
                height: 100,
                color: Colors.purple,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: 50,
                height: 100,
                color: Colors.green,
              ),
            )
          ],
        )
    );
  }

}