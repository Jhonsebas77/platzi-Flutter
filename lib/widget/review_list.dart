import 'package:flutter/material.dart';
import './review.dart';

// ignore: must_be_immutable
class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Review("src/Assets/Images/1.png", "Bulbasaur", "Planta / Veneno"),
            Review("src/Assets/Images/2.png", "Ivysaur", "Planta / Veneno"),
            Review("src/Assets/Images/3.png", "Venasaur", "Planta / Veneno"),
            Review("src/Assets/Images/4.png", "Charmander", "Fuego"),
            Review("src/Assets/Images/5.png", "Charmeleon", "Fuego"),
            Review("src/Assets/Images/6.png", "Charizard", "Fuego / Volador"),
            Review("src/Assets/Images/7.png", "Squirtle", "Agua"),
            Review("src/Assets/Images/8.png", "Wartotle", "Agua"),
            Review("src/Assets/Images/9.png", "Blastoise", "Agua")
          ],
        ));
  }
}
