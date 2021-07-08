import 'package:flutter/material.dart';
import 'package:navigator_master/routes/second_screen.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            // Text("First Page", style: Theme.of(context).textTheme.headline4,),
            // ElevatedButton(onPressed: () {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => SecondPage())
            //   );
            // }, child: Text('Go to Second page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/screen2');
                },
                child: Text('Go to Second page')),
          ],
        ),
      ),
    );
  }
}
