import 'package:flutter/material.dart';

class MultipleWidgets extends StatefulWidget {
  @override
  _MultipleWidgetsState createState() => _MultipleWidgetsState();
}

class _MultipleWidgetsState extends State<MultipleWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Working with multiple widget"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
          for (int i = 0; i < 9; i++) _eachButtonBuilder(i.toString())
        ],
      ),
    );
  }
}

Widget _eachButtonBuilder(String buttonText) {
  return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [BoxShadow()]),
      height: 30,
      width: 30,
      // color: Colors.grey,s
      child: Text(
        buttonText,
      ));
}
