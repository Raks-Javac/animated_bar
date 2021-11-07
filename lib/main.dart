import 'package:animated_snack_bar/src/body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter animated bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BarTester(),
    );
  }
}
