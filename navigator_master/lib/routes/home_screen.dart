import 'package:flutter/material.dart';
import 'package:navigator_master/routes/route.dart';
import 'package:navigator_master/routes/second_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Home Page",
              style: Theme.of(context).textTheme.headline5,
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => SecondPage())
              );
            }, child: Text('Go to first page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'screen1');
                },
                child: Text('Go to First page with named')),
          ],
        ),
      ),
    );
  }
}
