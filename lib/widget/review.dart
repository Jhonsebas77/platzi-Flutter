import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Review extends StatelessWidget {
  String pathImage = "src/Assets/Images/1.png";
  String pokemonName = 'Bulbasaur';
  String pokemonType = 'Planta / Veneno';
  String pathImagePokeBall = "src/Assets/Images/ultraball.png";

  Review(this.pathImage, this.pokemonName, this.pokemonType);

  @override
  Widget build(BuildContext context) {
    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        pokemonType,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13, fontFamily: 'lato', fontWeight: FontWeight.w900),
      ),
    );
    final userName = Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Text(pokemonName,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 17, fontFamily: 'lato')),
    );
    final imgPokeball = Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 30),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(pathImagePokeBall),
        ),
      ),
    );
    final pokemonDetails = Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[userName, userComment],
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
    );
    final photo = Container(
        margin: EdgeInsets.only(top: 20, left: 20),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(pathImage))));
    return Row(
      children: <Widget>[photo, Expanded(child: pokemonDetails), imgPokeball],
    );
  }
}
