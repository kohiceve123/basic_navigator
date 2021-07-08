import 'package:flutter/material.dart';
import 'package:untitled8/screen/homepage.dart';
import 'package:untitled8/screen/screen1.dart';
import 'package:untitled8/screen/screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        MyHomePage.ROUTE : (context) => MyHomePage(),
        ScreenOne.ROUTE : (context) => ScreenOne(),
        ScreenTwo.ROUTE : (context) => ScreenTwo(),

      },
    );
  }
}
