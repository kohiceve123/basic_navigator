import 'package:flutter/material.dart';
import 'package:passdata/pages/home_screen.dart';
import 'package:passdata/pages/page1.dart';
import 'package:passdata/pages/page2.dart';
import 'package:passdata/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      onGenerateRoute: (settings){
        if(settings.name == SecondPage.route){
           final Product prd = settings.arguments as Product;
            return MaterialPageRoute(builder: (context) => SecondPage(name: prd.name,price: prd.price,));
        }
      },
      routes: {
        FirstPage.route :(context) =>FirstPage(),
      },
    );
  }
}