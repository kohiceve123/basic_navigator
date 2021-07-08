import 'package:flutter/material.dart';
import 'package:passdata/product.dart';

class ThirdPage extends StatelessWidget {

  String name;
  ThirdPage({Key? key, required this.name, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
          ],
        ),
      ),
    );
  }
}
