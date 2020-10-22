import 'package:flutter/material.dart';
import './gradient_back.dart';
import 'card_image_list.dart';

// ignore: must_be_immutable
class HeaderAppBar extends StatelessWidget {
  String titleScreen = 'Bienvenido';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[GradientBack(titleScreen), CardImageList()],
    );
  }
}
