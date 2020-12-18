import 'package:day1/screens/detailspage.dart';
import 'package:day1/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/details": (context) => DetailsPage(),
    },
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
