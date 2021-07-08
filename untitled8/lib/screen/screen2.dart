import 'package:flutter/material.dart';
import 'package:untitled8/screen/screen3.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);
  static final ROUTE ='/screen2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('Back to Screen 1 ')),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenThree()));
            }, child: Text('Go to screen 3')),

          ],
        ),
      ),
    );
  }
}
