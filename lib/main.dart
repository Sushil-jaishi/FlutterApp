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
        body:InkWell(
          onTap: () {
            print('tapped on the container');
          },
          onDoubleTap: (){
            print('double tapped on the container');
          },
          onLongPress: (){
            print('long pressed on the container');
          },
          child: Container(
            width:100,
            height: 100,
            color: Colors.green,
          ),
        )
    );
  }

}