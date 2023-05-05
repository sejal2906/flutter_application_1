import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Batches.dart';
import 'package:flutter_application_1/pages/Homepage_admin.dart';
import 'package:flutter_application_1/pages/Homepage_user.dart';
import 'package:flutter_application_1/pages/Login_page.dart';
import 'package:flutter_application_1/pages/Registration_page.dart';
import 'package:flutter_application_1/pages/table.dart';


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
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme:ThemeData(primarySwatch: Colors.blue),

      routes: {
       "/" :(context)=> LoginPage(),

        "/Login":(context)=>LoginPage(),
      },
    );
  }
}
