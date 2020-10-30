import 'package:flutter/material.dart';
import '../../../widget/gradient_back.dart';
import '../widgets/card_image_list.dart';

// ignore: must_be_immutable
class HeaderAppBar extends StatelessWidget {
  String titleScreen = 'Bienvenido';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[GradientBack(height: 250), CardImageList()],
    );
  }
}
