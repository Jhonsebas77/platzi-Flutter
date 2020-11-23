import 'package:flutter/material.dart';

class TripCard extends StatelessWidget {
  final String destination;
  final String initDate;
  final String finalDate;
  TripCard(
      {Key key,
      @required this.destination,
      @required this.finalDate,
      @required this.initDate});
  @override
  Widget build(BuildContext context) {
    String pathImage = "src/Assets/Images/IMG_1.jpg";
    double width = 328;
    double height = 230;
    double left = 16;
    double right = 16;
    Alignment initialPosition = Alignment.topCenter;
    Alignment finalPosition = Alignment.bottomCenter;
    final card = Container(
        height: height,
        width: width,
        margin: EdgeInsets.only(left: left, right: right),
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: pathImage.contains('Assets') ? BoxFit.cover : BoxFit.contain,
              image: AssetImage(pathImage),
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
    final destinationText = Container(
        margin: EdgeInsets.only(left: 16),
        alignment: Alignment.bottomLeft,
        child: Text(
          destination,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ));
    final datesText = Container(
        margin: EdgeInsets.only(left: 16),
        alignment: Alignment.bottomLeft,
        child: Text(
          '$initDate - $finalDate',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ));
    final gradient = Container(
        height: height,
        width: width,
        margin: EdgeInsets.only(left: left, right: right),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 16, left: 16, bottom: 122),
              child: Row(
                children: [
                  productIcon('hola'),
                  productIcon('hola'),
                ],
              ),
            ),
            destinationText,
            datesText
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            shape: BoxShape.rectangle,
            gradient: LinearGradient(colors: [
              Colors.transparent,
              Colors.transparent,
              Colors.black12,
              Colors.black45,
            ], begin: initialPosition, end: finalPosition),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black12,
                blurRadius: 15,
                offset: Offset(0, 7),
              )
            ]));
    return InkWell(
        onTap: () {},
        child: Stack(
          alignment: Alignment(0.9, 1.1),
          children: <Widget>[
            card,
            gradient,
          ],
        ));
  }
}

Widget productIcon(String product) {
  return Container(
    alignment: Alignment.topLeft,
    margin: EdgeInsets.only(right: 8),
    child: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      height: 26,
      width: 26,
      child: Icon(
        Icons.airplanemode_active_outlined,
        color: Colors.black,
        size: 20,
      ),
    ),
  );
}
