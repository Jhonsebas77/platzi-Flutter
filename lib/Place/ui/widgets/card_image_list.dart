import 'package:flutter/material.dart';
import 'card_image_with_flaBtn.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImageWithFabIcon(
              pathImage: 'src/Assets/Images/IMG_1.jpg',
              iconData: Icons.favorite_border,
              height: 250,
              width: 300,
              left: 20),
          CardImageWithFabIcon(
              pathImage: 'src/Assets/Images/IMG_2.jpg',
              iconData: Icons.favorite_border,
              height: 250,
              width: 300,
              left: 20),
          CardImageWithFabIcon(
              pathImage: 'src/Assets/Images/IMG_3.jpg',
              iconData: Icons.favorite_border,
              height: 250,
              width: 300,
              left: 20),
          CardImageWithFabIcon(
              pathImage: 'src/Assets/Images/IMG_4.jpg',
              iconData: Icons.favorite_border,
              height: 250,
              width: 300,
              left: 20),
          CardImageWithFabIcon(
              pathImage: 'src/Assets/Images/IMG_5.jpg',
              iconData: Icons.favorite_border,
              height: 250,
              width: 300,
              left: 20)
        ],
      ),
    );
  }
}
