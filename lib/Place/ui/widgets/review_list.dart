import 'package:flutter/material.dart';
import 'review.dart';

// ignore: must_be_immutable
class ReviewList extends StatelessWidget {
  String pathImage = "src/Assets/Images/photo_jsob.png";
  String nameUser = 'Sebastian Otalora';
  String details = '1 Review 5 photos';
  String comment = 'There is a Amazing Place Here';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(pathImage, nameUser, details, comment),
        Review(pathImage, nameUser, details, comment),
        Review(pathImage, nameUser, details, comment),
        Review(pathImage, nameUser, details, comment),
        Review(pathImage, nameUser, details, comment)
      ],
    );
  }
}
