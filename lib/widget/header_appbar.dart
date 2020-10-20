import 'package:flutter/material.dart';
import './gradient_back.dart';

// ignore: must_be_immutable
class HeaderAppBar extends StatelessWidget {
  String titleScreen = 'Pokedex';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[GradientBack(titleScreen)],
    );
  }
}
