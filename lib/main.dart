import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: TextTheme(
          displayMedium: TextStyle(
            color: Colors.green,
            fontSize: 30
          )
        )
      ),
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
        body: Text('Hello Everyone!',style: Theme.of(context).textTheme.displayMedium)
    );
  }

}