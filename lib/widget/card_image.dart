import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardImage extends StatelessWidget {
  String pathImage = "src/Assets/Images/IMG_1.jpg";
  CardImage(this.pathImage);
  @override
  Widget build(BuildContext context) {
    final card = Container(
        height: 350,
        width: 250,
        margin: EdgeInsets.only(top: 80, left: 20),
        decoration: BoxDecoration(
            image:
                DecorationImage(fit: BoxFit.fill, image: AssetImage(pathImage)),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black12, blurRadius: 15, offset: Offset(0, 7))
            ]));
    return card;
  }
}
