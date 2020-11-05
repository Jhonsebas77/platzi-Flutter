import 'dart:io';
import 'package:flutter/material.dart';
import '../../../widget/floating_action_button_green.dart';

// ignore: must_be_immutable
class CardImageWithFabIcon extends StatelessWidget {
  final String pathImage;
  final double height;
  final double width;
  final VoidCallback onPressedFabIcon;
  final IconData iconData;
  double left;
  CardImageWithFabIcon({
    Key key,
    @required this.pathImage,
    @required this.height,
    @required this.width,
    @required this.onPressedFabIcon,
    @required this.iconData,
    this.left,
  });
  @override
  Widget build(BuildContext context) {
    final card = Container(
        height: height,
        width: width,
        margin: EdgeInsets.only(left: left),
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: pathImage.contains('Assets') ? BoxFit.cover : BoxFit.contain,
              image: pathImage.contains('Assets')
                  ? AssetImage(pathImage)
                  : FileImage(File(pathImage)),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black12,
                blurRadius: 15,
                offset: Offset(0, 7),
              )
            ]));
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        card,
        FloatingActionButtonGreen(
          iconData: iconData,
          onPressed: onPressedFabIcon,
        )
      ],
    );
  }
}
