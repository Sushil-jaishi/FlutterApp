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
        body:TextButton(
          //Elevated button and outlined button can also implemented as textbutton
          child: Text('click me'),
          onPressed: (){
            print('pressed on button');
          },
          onLongPress: (){
            print('long pressed on button');
          },
        )
    );
  }

}