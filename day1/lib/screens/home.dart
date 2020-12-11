import 'package:flutter/material.dart';

/*
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: Text("data"),
    );
  }
}
*/
class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String changeValue = "Initial";
  String gestureValue = "Changing value using gesture";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              print("Working");
              setState(() {
                gestureValue = "OnTap Called";
              });
            },
            onLongPress: () {
              setState(() {
                gestureValue = "OnLong Preess";
              });
            },
            onDoubleTap: () {
              setState(() {
                gestureValue = "On Double Tap";
              });
            },
            child: Text(
              "Provide gesture here",
              style: TextStyle(fontSize: 20),
            ),
          ),
          RaisedButton(
            onPressed: () {
              changeValue = "changed";
              print(changeValue);
              setState(() {});
            },
            child: Text(" Me"),
          ),
          Row(
            children: [
              Text("Gesture Status:\t\t\t"),
              Text(
                gestureValue,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  String changeValue = "Initial value";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change"),
      ),
      body: Column(
        children: [
          Text(changeValue),
          RaisedButton(
            onPressed: () {
              changeValue = "changed";
              print(changeValue);
            },
            child: Text("Click Me"),
          ),
        ],
      ),
    );
  }
}
