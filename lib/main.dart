import 'package:flutter/material.dart';
import 'package:uber/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uber',
      theme: new ThemeData(
        primaryColor: Color(0xff48C5FC),
        fontFamily: 'Comfortaa'
      ),
      home: HomePage(),

    );
  }
}
