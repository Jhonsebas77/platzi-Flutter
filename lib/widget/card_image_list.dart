import 'package:flutter/material.dart';
import './card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("src/Assets/Images/IMG_1.jpg"),
          CardImage("src/Assets/Images/IMG_2.jpg"),
          CardImage("src/Assets/Images/IMG_3.jpg"),
          CardImage("src/Assets/Images/IMG_4.jpg"),
          CardImage("src/Assets/Images/IMG_5.jpg")
        ],
      ),
    );
  }
}
