import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  static final ROUTE ='/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/screen1');
            }, child: Text('Go to screen 1')),
            ElevatedButton(onPressed: () {
            }, child: Text('Go to screen 1')),
            ElevatedButton(onPressed: () {
              Navigator.maybePop(context);
            }, child: Text('maybe pop')),
            ElevatedButton(onPressed: () {
              Navigator.canPop(context);
            }, child: Text('can pop')),
          ],
        ),
      ),
    );
  }
}
