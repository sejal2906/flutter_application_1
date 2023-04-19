import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login_page.dart';
//import 'package:flutter_application_1/practice.dart';
//import 'googleFonts.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     //home: HomePage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme:ThemeData(primarySwatch: Colors.blue),
     // darkTheme: ThemeData(
       // brightness: Brightness.dark,-->for dark theme
     // ),
      //initialRoute: "/home",
      routes: {
       "/" :(context)=> LoginPage(),
        //"/home":(context)=>HomePage(),
        "/Login":(context)=>LoginPage(),
      },
    );
  }
}
