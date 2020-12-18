import 'package:day1/models/jsonPlaceholder.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _loadingWidget = LinearProgressIndicator();
  Widget _disableLoadingWidget = SizedBox();
  bool _isLoading = false;
  List<Widget> _listItems = List();

  double height, width;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("JsonPlaceholder"),
        actions: [
          _refreshButton(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _isLoading == true ? _loadingWidget : _disableLoadingWidget,
            //
            //
            //
            _myList(),
          ],
        ),
      ),
    );
  }

  Widget _refreshButton() {
    return IconButton(
        icon: Icon(Icons.refresh),
        onPressed: () {
          _fetch();
        });
  }

  _fetch() async {
    _enableLoading();
    String url = "https://jsonplaceholder.typicode.com/posts";
    Response res = await get(url);
    print(res.body);
    _responseDecoder(res.body);
    _disableLoading();
  }

  _enableLoading() {
    setState(() {
      _isLoading = true;
    });
  }

  _disableLoading() {
    setState(() {
      _isLoading = false;
    });
  }

  _responseDecoder(String body) {
    List list = jsonDecode(body);

    // print(list.length);
    // print(list[0]);
    List<Widget> tempList = List();
    for (int i = 0; i < list.length; i++) {
      Map eachElement = list[i];
      JsonPlaceHolderModel model = JsonPlaceHolderModel(
        title: eachElement['title'],
        body: eachElement['body'],
        id: eachElement['id'],
        userId: eachElement['userId'],
      );
      String title = eachElement['title'];
      print(title);
      // Widget titleCard = _card(title);
      // tempList.add(titleCard);

      Widget titleCard = _card(model);
      tempList.add(titleCard);
    }
    _listItems = tempList;
    setState(() {});
  }

  Widget _myList() {
    return SizedBox(
      height: height * .85,
      width: width,
      child: ListView(
        children: _listItems,
      ),
    );
  }

  Widget _card(JsonPlaceHolderModel model) {
    return GestureDetector(
      child: Card(
        color: Colors.green,
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(model.title),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, "/details", arguments: model);
      },
    );
  }
}
