import 'package:flutter/material.dart';
import 'package:passdata/product.dart';

class FirstPage extends StatelessWidget {

  static const route = '/page1';
  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Product Name${product.name}'),
            Text('Product Price${product.price}'),
          ],
        ),
      ),
    );
  }
}
