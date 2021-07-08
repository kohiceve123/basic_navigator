import 'package:flutter/material.dart';
import 'package:passdata/product.dart';

class SecondPage extends StatelessWidget {
  static const route = '/page2';
  String name;
  int price;

  SecondPage({Key? key, required this.name, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Product Name${name}'),
            Text('Product Price${price}'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'deptr 1123');
                },
                child: Text('Print me price'))
          ],
        ),
      ),
    );
  }
}
