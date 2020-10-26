import 'package:flutter/material.dart';
import './star.dart';

// ignore: must_be_immutable
class Review extends StatelessWidget {
  String pathImage = "src/Assets/Images/photo_jsob.png";
  String nameUser = 'Sebastian Otalora';
  String details = '1 Review 5 photos';
  String comment = 'There is a Amatzing Place Here';

  Review(this.pathImage, this.nameUser, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Text(comment,
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 13, fontFamily: 'lato', fontWeight: FontWeight.w900)),
    );
    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Row(
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Text(details,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 13, fontFamily: 'lato', color: Colors.grey)),
          Row(
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Star(15, "full"),
              Star(15, "full"),
              Star(15, "half"),
              Star(15, "empty"),
              Star(15, "empty")
            ],
          )
        ],
      ),
    );
    final userName = Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Text(nameUser,
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 17, fontFamily: 'lato')),
    );
    final userDetails = Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );
    final photo = Container(
        margin: EdgeInsets.only(top: 20, left: 20),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(pathImage))));
    return Row(
      textDirection: TextDirection.ltr,
      children: <Widget>[photo, userDetails],
    );
  }
}
