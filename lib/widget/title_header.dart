import 'package:flutter/material.dart';

class TitleHeader extends StatelessWidget {
  final String title;
  final EdgeInsets padding;
  TitleHeader({Key key, this.title, this.padding});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'Latos',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
