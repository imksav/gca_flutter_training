import 'package:flutter/material.dart';
import 'package:http/http.dart';

class NetworkCall extends StatefulWidget {
  @override
  _NetworkCallState createState() => _NetworkCallState();
}

class _NetworkCallState extends State<NetworkCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Netwok Call"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buttonToFetch(),
          ],
        ),
      ),
    );
  }

  Widget _buttonToFetch() {
    return RaisedButton(
      onPressed: () {
        _fetchFromBackend();
      },
      child: Text("Fetch data from backend"),
    );
  }

  void _fetchFromBackend() async {
    String url = "https://jsonplaceholder.typicode.com/posts";
    Response res = await get(url);
    res.body;
    print(res.body);
  }
}
