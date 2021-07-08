import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);
  static final ROUTE ='/screen1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('Back to home page ')),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/screen2');
            }, child: Text('Go to Screen 2 ')),
            ElevatedButton(onPressed: () {
              Navigator.pushReplacementNamed(context, '/screen2');
            }, child: Text('Go to screen 2 replace')),
          ],
        ),
      ),
    );
  }
}
