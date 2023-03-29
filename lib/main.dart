import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
class HomePageScreen extends StatefulWidget{
  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  var finalName;
  @override
  void initState() {
    getdata();
  }
  var namecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sushil',),
        ),
        body: Container(
          child: Column(
            children: [
              TextField(controller: namecontroller,
                decoration: InputDecoration(),
              ),
              ElevatedButton(onPressed: ()async{
                var prefs= await SharedPreferences.getInstance();
                prefs.setString('name', namecontroller.text.toString());
                getdata();
                setState(() {
                });

              },
                child:Text('Click here'),

              ),
              Text('$finalName')
            ],
          ),
        )
    );
  }

  void getdata () async{
    var prefs=await SharedPreferences.getInstance();
    var name=prefs.getString('name');
    finalName=name??'Noname';
    setState(() {

    });
  }
}