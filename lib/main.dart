import 'package:flutter/material.dart';
import 'dart:ui';
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
        primarySwatch: Colors.brown,
      ),
      home: HomePageScreen(),
    );
  }
}

class HomePageScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageScreenState();
  }

}

class HomePageScreenState extends State<HomePageScreen>{
  dynamic value=0;
  dynamic value2=0;
  dynamic operator='';
  dynamic results;
  String display(var value,var operator,var value2){
    if(operator==''&&value==0){
      results='';
      return results;
    }
   results=value.toString()+operator;
   if(operator!='') {
     if(value2!=0)
     results = results + value2.toString();
   }
   return results;
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Sushil'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black87,
        child: Column(

          children: [
            Expanded(
              flex: 8,
              child: Container(
                color: Colors.black,
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.centerRight,
                child: Text(display(value, operator, value2),style: TextStyle(color: Colors.white,fontSize: 40),),
              ),
            ),
            Expanded(
              flex: 17,
              child: Container(
                color: Colors.black45,
                child: GridView.count(
                  crossAxisCount: 4,
                  children: [
                    //-----C-------
                    InkWell(
                      onTap: (){
                        value=0;
                        value2=0;
                        operator='';
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Text('C',style: TextStyle(color: Colors.green,fontSize: 30),)),
                      ),
                    ),
                    //-----%-------
                    InkWell(
                      onTap: (){
                          value = value / 100;
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Text('%',style: TextStyle(color: Colors.green,fontSize: 30),)),
                      ),
                    ),
                    //-----Cut-------
                    InkWell(
                      onTap: (){
                        if(operator!=''&&value2==0){
                          operator='';
                        }else {
                          if (operator == '') {
                            var last = value % 10;
                            value = value - last;
                            value = (value / 10);
                            value = value.toInt();
                          } else {
                            var last = value2 % 10;
                            value2 = value2 - last;
                            value2 = (value2 / 10);
                            value2 = value2.toInt();
                          }
                        }
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Icon(
                            Icons.backspace_outlined,
                          size: 30,
                          color: Colors.green,
                        ),),
                      ),
                    ),
                    //-----/-------
                    InkWell(
                      onTap: (){
                        operator='/';
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Text('/',style: TextStyle(color: Colors.green,fontSize: 30),)),
                      ),
                    ),
                    //-----7-------
                    InkWell(
                      onTap: (){
                        if(operator==''){
                          value=(value*10)+7;
                        }else{
                          value2=(value2*10)+7;
                        }
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Text('7',style: TextStyle(color: Colors.white,fontSize: 30),)),
                      ),
                    ),
                    //-----8-------
                    InkWell(
                      onTap: (){
                        if(operator==''){
                          value=(value*10)+8;
                        }else{
                          value2=(value2*10)+8;
                        }
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Text('8',style: TextStyle(color: Colors.white,fontSize: 30),)),
                      ),
                    ),
                    //-----9-------
                    InkWell(
                      onTap: (){
                        if(operator==''){
                          value=(value*10)+9;
                        }else{
                          value2=(value2*10)+9;
                        }
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Text('9',style: TextStyle(color: Colors.white,fontSize: 30),)),
                      ),
                    ),
                    //-----*-------
                    InkWell(
                      onTap: (){
                        operator='*';
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Icon(
                          Icons.close,
                          size: 30,
                          color: Colors.green,
                        ),),
                      ),
                    ),
                    //-----4-------
                    InkWell(
                      onTap: (){
                        if(operator==''){
                          value=(value*10)+4;
                        }else{
                          value2=(value2*10)+4;
                        }
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Text('4',style: TextStyle(color: Colors.white,fontSize: 30),)),
                      ),
                    ),
                    //-----5-------
                    InkWell(
                      onTap: (){
                        if(operator==''){
                          value=(value*10)+5;
                        }else{
                          value2=(value2*10)+5;
                        }
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Text('5',style: TextStyle(color: Colors.white,fontSize: 30),)),
                      ),
                    ),
                    //-----6-------
                    InkWell(
                      onTap: (){
                        if(operator==''){
                          value=(value*10)+6;
                        }else{
                          value2=(value2*10)+6;
                        }
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Text('6',style: TextStyle(color: Colors.white,fontSize: 30),)),
                      ),
                    ),
                    //-----minus-------
                    InkWell(
                      onTap: (){
                        operator='-';
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Text('-',style: TextStyle(color: Colors.green,fontSize: 30),)),
                      ),
                    ),
                    //-----1-------
                    InkWell(
                      onTap: (){
                        if(operator==''){
                          value=(value*10)+1;
                        }else{
                          value2=(value2*10)+1;
                        }
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Text('1',style: TextStyle(color: Colors.white,fontSize: 30),)),
                      ),
                    ),
                    //-----2-------
                    InkWell(
                      onTap: (){
                        if(operator==''){
                          value=(value*10)+2;
                        }else{
                          value2=(value2*10)+2;
                        }
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Text('2',style: TextStyle(color: Colors.white,fontSize: 30),)),
                      ),
                    ),
                    //-----3-------
                    InkWell(
                      onTap: (){
                        if(operator==''){
                          value=(value*10)+3;
                        }else{
                          value2=(value2*10)+3;
                        }
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Text('3',style: TextStyle(color: Colors.white,fontSize: 30),)),
                      ),
                    ),
                    //-----add-------
                    InkWell(
                      onTap: (){
                        operator='+';
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Text('+',style: TextStyle(color: Colors.green,fontSize: 30),)),
                      ),
                    ),
                    //-----00-------
                    InkWell(
                      onTap: (){
                        if(operator==''){
                          value=(value*100);
                        }else{
                          value2=(value2*100);
                        }
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Text('00',style: TextStyle(color: Colors.white,fontSize: 30),)),
                      ),
                    ),
                    //-----0-------
                    InkWell(
                      onTap: (){
                        if(operator==''){
                          value=(value*10);
                        }else{
                          value2=(value2*10);
                        }
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Text('0',style: TextStyle(color: Colors.white,fontSize: 30),)),
                      ),
                    ),
                    //-----point-------
                    InkWell(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Text('.',style: TextStyle(color: Colors.white,fontSize: 30),)),
                      ),
                    ),
                    //-----equal to-------
                    InkWell(
                      onTap: (){
                        if(operator=='+'){
                          value=value+value2;
                        } else if(operator=='-'){
                          value=value-value2;
                        } else if(operator=='*'){
                          value=value*value2;
                        } else if(operator=='/'){
                          value=value/value2;
                          if(value%value2==0){
                             value= value.toInt();
                          }
                        }

                        operator='';
                        value2=0;
                          setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(child: Text('=',style: TextStyle(color: Colors.green,fontSize: 30),)),
                      ),
                    )
                  ],
                )
              ),
            )

          ],
        ),
      ),
    );
  }

}