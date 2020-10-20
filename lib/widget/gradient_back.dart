import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GradientBack extends StatelessWidget {
  String title = "Popular";
  GradientBack(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.red],
              begin: FractionalOffset(0.2, 0),
              end: FractionalOffset(1, 0.6),
              stops: [0, 0.6],
              tileMode: TileMode.clamp)),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold),
      ),
      alignment: Alignment.center,
    );
  }
}
