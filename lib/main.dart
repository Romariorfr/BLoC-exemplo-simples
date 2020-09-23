import 'package:bloc_pattern/bloc_pattern.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'increment/increment-widget.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(child: IncrementWidget());
  }
}
