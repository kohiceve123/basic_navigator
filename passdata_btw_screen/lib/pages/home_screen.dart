import 'package:flutter/material.dart';
import 'package:passdata/pages/page2.dart';
import 'package:passdata/pages/page3.dart';
import 'package:passdata/product.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            // ElevatedButton(onPressed: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage( name: 'hellooo',)));
            // }, child: Text('data constructor')),

            // ElevatedButton(onPressed: () {
            //     Navigator.pushNamed(context, '/page1',
            //         arguments: Product(name: 'Iphone 12 pro max', price: 3000000));
            // }, child: Text('Pass data to page 1')),

            //
            // ElevatedButton(onPressed: () {
            //   Navigator.pushNamed(context, '/page2',
            //       arguments: Product(name: 'Iphone 12 pro max', price: 2500000));
            // }, child: Text('Go to page 2')),

            //
            ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondPage(
                                price: 123,
                                name: '',
                              )));
                  print('Gia cua dien thoai la: ${result} vnd');
                },
                child: Text('Go page 2 and return Price')),
          ],
        ),
      ),
    );
  }
}
