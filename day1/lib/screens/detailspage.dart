import 'package:day1/models/jsonPlaceholder.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    JsonPlaceHolderModel model = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Page"),
      ),
      body: Center(
        child: Text(model.body),
      ),
    );
  }
}
