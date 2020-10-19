import 'package:flutter/material.dart';
import './star.dart';

// ignore: must_be_immutable
class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int starts;
  String descriptionPlace;
  DescriptionPlace(this.namePlace, this.starts, this.descriptionPlace);
  @override
  Widget build(BuildContext context) {
    final descriptionText = Container(
      margin: EdgeInsets.only(left: 25, right: 20, top: 10),
      child: Text(
        descriptionPlace,
        textAlign: TextAlign.justify,
      ),
      alignment: Alignment.centerLeft,
    );
    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20.0, right: 20),
          child: Text(
            namePlace,
            style: TextStyle(
                fontFamily: "Lato", fontSize: 30, fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          children: <Widget>[
            Star(25, "full"),
            Star(25, "full"),
            Star(25, "full"),
            Star(25, "full"),
            Star(25, "full")
          ],
        )
      ],
    );
    final container = Column(
      children: <Widget>[titleStars, descriptionText],
    );
    return container;
  }
}
