import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);
  static final ROUTE ='/screen3';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(onPressed: () {
              Navigator.maybePop(context);
            }, child: Text('maybe pop')),

            ElevatedButton(onPressed: () {
              Navigator.popAndPushNamed(context, '/screen1');
            }, child: Text('replace name')),


            ElevatedButton(onPressed: () {
              Navigator.canPop(context);
            }, child: Text('can pop')),
          ],
        ),
      ),
    );
  }
}
