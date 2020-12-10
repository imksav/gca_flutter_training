import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("This is title - ImKsav"),
        actions: [
          Icon(Icons.notification_important),
          SizedBox(width: 20),
          Icon(Icons.videocam),
        ],
        // centerTitle: true,
      ),
      body: ListView(
        // scrollDirection: Axis.horizontal,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 100, width: 100, color: Colors.grey),
          SizedBox(height: 10),
          Container(height: 100, width: 100, color: Colors.blue),
          Container(height: 100, width: 100, color: Colors.grey),
          Text("This is text widget", style: TextStyle(color: Colors.red)),
          TextField(),
          RaisedButton(
              color: Colors.amber,
              elevation: 5,
              onPressed: () {
                print("tel:9823872337");
              },
              child: Text("Raised Button")),
          FlatButton(
              color: Colors.grey,
              onPressed: () {
                print("Pressed");
              },
              child: Text("FlatButton")),
          Image.network(
            "https://course.genesecloud.academy/pluginfile.php?file=%2F1%2Ftheme_alpha%2Fcustomlogotopbar%2F1606229507%2Fsmall-icon.png",
            height: 40,
            width: 40,
          ),
          Container(
            color: Colors.red,
            height: 200,
            width: 200,
            child: Stack(
              children: [
                Container(color: Colors.amber, height: 200, width: 200),
                Container(color: Colors.green, height: 100, width: 100),
                Text("I am at the top."),
              ],
            ),
          ),
          Container(height: 100, width: 100, color: Colors.grey),
          Container(height: 100, width: 100, color: Colors.blue),
          Container(height: 100, width: 100, color: Colors.grey),
          Text("This is text widget", style: TextStyle(color: Colors.red)),
          Container(
            height: 200,
            width: 100,
            color: Color.fromRGBO(255, 155, 10, 10),
          )
        ],
      ),
    );
  }
}
