import 'dart:async';

import 'package:flutter/material.dart';

class IncrementWidget extends StatefulWidget {
  @override
  _IncrementWidgetState createState() => _IncrementWidgetState();
}

class _IncrementWidgetState extends State<IncrementWidget> {
  var _counter = 0;
  final _streamController = StreamController<int>();

  void _incrementCounter() {
    _counter++;
    _streamController.sink.add(_counter);
  }

  @override
  void dispose() {
    _streamController.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Stream Counter"),
        centerTitle: true,
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: _streamController.stream,
          initialData: 0,
          builder: (context, snapshot) {
            return Text("tocou no botao ${snapshot.data} vezes");
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
