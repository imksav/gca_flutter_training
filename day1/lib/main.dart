import 'package:day1/screens/firstpage.dart';
import 'package:day1/screens/secondpage.dart';
import 'package:day1/screens/thirdpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/firstPage": (context) => FirstPage(),
        "/secondPage": (context) => SecondPage(),
        "/thirdPage": (context) => ThirdPage(),
      },
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
