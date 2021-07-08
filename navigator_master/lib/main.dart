import 'package:flutter/material.dart';
import 'package:navigator_master/routes/finst_screen.dart';
import 'package:navigator_master/routes/home_screen.dart';
import 'package:navigator_master/routes/route.dart';
import 'package:navigator_master/routes/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes:{
        // '/screen1' : (context) => FirstPage()
        Routes.screen1 : (context) => FirstPage(),
        Routes.screen2 : (context) => SecondPage(),
      },
      home: HomePage(),

    );
  }
}
