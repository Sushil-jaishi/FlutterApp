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
  var arrName = ['Sushil','Deepa','Kalpana'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sushil'),
        ),
        body:ListView.builder(itemBuilder: (context, index) {
          return ListTile(
            leading: Text('${index+1}'),
            title: Text('${arrName[index]}'),

          );
        },
          itemCount: arrName.length,
        )
    );
  }

}