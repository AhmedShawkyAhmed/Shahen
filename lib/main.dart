// @dart=2.9
import 'package:flutter/material.dart';
import 'package:shahen/stateful/rate.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Google Maps Demo',
      home: DriverRate(),
    );
  }
}
