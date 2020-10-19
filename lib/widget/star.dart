import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Star extends StatelessWidget {
  double sizeStar = 5;
  Star(this.sizeStar);
  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: EdgeInsets.only(right: 3),
      child: Icon(
        Icons.star,
        color: Colors.yellow,
        size: sizeStar,
      ),
    );
    return star;
  }
}
