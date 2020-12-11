import 'package:flutter/material.dart';

class MyCounterApp extends StatefulWidget {
  @override
  _MyCounterAppState createState() => _MyCounterAppState();
}

class _MyCounterAppState extends State<MyCounterApp> {
  int _counterValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _actionButtons(),
      appBar: AppBar(
        title: Text("My Counter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Ink(
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("You have pressed floating action button"),
              Text("$_counterValue"),
            ],
          ),
        ),
      ),
    );
  }

  _increment() {
    setState(() {
      _counterValue++;
    });
  }

  _decrement() {
    setState(() {
      _counterValue--;
    });
  }

  Widget _actionButtons() {
    return Ink(
      color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              _increment();
            },
            child: Icon(Icons.add, size: 50),
            backgroundColor: Colors.green.shade700,
          ),
          FloatingActionButton(
            onPressed: () {
              _decrement();
            },
            child: Icon(Icons.remove, size: 50),
            backgroundColor: Colors.green.shade700,
          ),
        ],
      ),
    );
  }
}
