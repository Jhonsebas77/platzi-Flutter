import 'package:flutter/material.dart';
import '../../../widget/button_purple.dart';

// ignore: must_be_immutable
class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int starts;
  String descriptionPlace;
  DescriptionPlace(this.namePlace, this.starts, this.descriptionPlace);
  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: EdgeInsets.only(top: 323, right: 3),
      child: Icon(Icons.star, color: Colors.yellow),
    );
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
          margin: EdgeInsets.only(left: 20.0, right: 20, top: 323),
          child: Text(
            namePlace,
            style: TextStyle(
                fontFamily: "Lato", fontSize: 30, fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          children: <Widget>[star, star, star, star, star],
        )
      ],
    );
    final container = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[titleStars, descriptionText, ButtonPurple('Navigate')],
    );
    return container;
  }
}
