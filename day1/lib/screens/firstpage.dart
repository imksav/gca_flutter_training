import 'package:day1/screens/secondpage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("First Page"),
        actions: [
          _myInstagramIcon(),
        ],
      ),
      body: Column(
        children: [
          MaterialButton(
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => SecondPage()));
              Navigator.pushNamed(context, "/secondPage");
            },
            child: Text("got to 2nd page"),
          ),
          RaisedButton(
            onPressed: () async {
              await Navigator.pushNamed(context, "/thirdPage");
              await Future.delayed(Duration(seconds: 5))
                  .then((value) => _displayDialog(context));
            },
            child: Text("go to 3rd page"),
          )
        ],
      ),
    );
  }

  void _displayDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.green,
              title: Text("You are learning good."),
            ));
  }

  Widget _myInstagramIcon() {
    return ImageIcon(NetworkImage(
            "https://th.bing.com/th/id/OIP.lfcooJ6yibNFmEhQBlIRMAHaGh?pid=Api&rs=1")
        // AssetImage("assets/instagram.png"),
        );
  }
}
