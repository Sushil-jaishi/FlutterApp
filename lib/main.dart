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
        body:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
          itemBuilder: (context, index) {
          return Container(color: arrColors[index],);
        },
        itemCount: arrColors.length,)
    );
  }

}