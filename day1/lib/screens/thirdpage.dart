import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/firstPage");
              // if you are going to back then never use named push option
            },
            child: Text("first page"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/secondPage");
              // Navigator.pushNamed(context, "/secondPage");
            },
            child: Text("second page"),
          ),
        ],
      ),
    );
  }
}
