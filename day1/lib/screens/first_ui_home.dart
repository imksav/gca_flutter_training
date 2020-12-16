import 'package:day1/screens/settings.dart';
import 'package:flutter/material.dart';

class FirstUIHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Root page"),
      ),
      body: Column(
        children: [
          IconButton(
              icon: Icon(Icons.settings),
              color: Colors.green,
              onPressed: () async {
                var result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Settings(
                              appBarTitle: "Settings",
                            )));

                return print("Pressed");
              })
        ],
      ),
    );
  }
}
