import 'package:flutter/material.dart';
import './widget/review_list.dart';
import './widget/header_appbar.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          body: Stack(children: <Widget>[
        ListView(
          children: <Widget>[ReviewList()],
        ),
        HeaderAppBar()
      ])),
    );
  }
}
