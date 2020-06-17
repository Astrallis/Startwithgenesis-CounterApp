import 'package:StartwithgenesisCounter/counter_app.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Color(0xfffbb034),
        primaryColor: Color(0xfffbb034),
      ),
      home: CounterApp(),
    );
  }
}
