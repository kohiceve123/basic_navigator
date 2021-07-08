import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Second Page", style: Theme.of(context).textTheme.headline4,),
            ElevatedButton(onPressed: ()  {
              Navigator.pop(context);
            }, child: Text('Return Home Page'))
          ],
        ),
      ),
    );
  }
}
