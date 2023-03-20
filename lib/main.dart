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
  var myemail=TextEditingController();
  var mypass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sushil',),
        ),
        body:Container(
          width:double.infinity,
          height: double.infinity,
          color: Colors.black26,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //LOGIN
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('LOG',style: TextStyle(fontSize: 30,color: Colors.white),),
                    Text('in',style: TextStyle(fontSize: 30,color: Colors.deepOrange),)
                  ],
                ),

                Container(height: 10,),
                //Email
                Container(
                  width: 300,
                  child: TextField(
                    controller: myemail,
                    decoration: InputDecoration(
                        hintText: 'name@example.com',

                        prefixIcon: Icon(Icons.email),

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                                color: Colors.orange,
                                width: 2
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                                color: Colors.yellow,
                                width: 2
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11)
                        )
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                //password
                Container(
                  width: 300,
                  child: TextField(
                    controller: mypass,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock),

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                                color: Colors.orange,
                                width: 2
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                                color: Colors.yellow,
                                width: 2
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11)
                        )
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                //login button
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextButton(

                      onPressed: (){
                        var Email=myemail.text;
                        var Pass=mypass.text;
                        print('$Email$Pass');
                      },
                      child:Text('Login',style: TextStyle(fontSize: 20,color: Colors.white,),)
                  ),
                ),
                Container(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't Have account."),
                      Text("Sign up now",style: TextStyle( color: Colors.white),)
                    ],
                  ),
                )


              ],
            ),
          ),
        )
    );
  }

}