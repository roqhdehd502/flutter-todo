// main module
import 'package:flutter/material.dart';

// view module

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(leading: Text('Sample'), actions: [
              Icon(Icons.star),
            ]),
            body: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset(
                    '',
                    width: 150,
                  ),
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('상품설명'),
                        Text('상품설명'),
                        Text('상품설명'),
                        Text('상품설명'),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
