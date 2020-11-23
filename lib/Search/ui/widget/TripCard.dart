import 'package:flutter/material.dart';

class TripCard extends StatelessWidget {
  final String destination;
  final String initDate;
  final String finalDate;
  final Function function;
  final String pathImage;
  TripCard({
    Key key,
    @required this.destination,
    @required this.finalDate,
    @required this.initDate,
    @required this.function,
    @required this.pathImage,
  });
  @override
  Widget build(BuildContext context) {
    double width = 328;
    double height = 230;
    double left = 16;
    double right = 16;
    Alignment initialPosition = Alignment.topCenter;
    Alignment finalPosition = Alignment.bottomCenter;
    final card = Container(
        height: height,
        width: width,
        margin: EdgeInsets.only(
          left: left,
          right: right,
          bottom: 16,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
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
    final gradient = Container(
        height: height,
        width: width,
        margin: EdgeInsets.only(
          left: left,
          right: right,
          bottom: 16,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 16,
                left: 16,
                bottom: 122,
              ),
              child: Row(
                children: [
                  productIcon('HOTEL'),
                  productIcon('FLIGHT'),
                ],
              ),
            ),
            destinationTrip(destination),
            datesTrip(initDate, finalDate)
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
        onTap: function,
        child: Stack(
          alignment: Alignment(0.9, 1.1),
          children: <Widget>[
            card,
            gradient,
          ],
        ));
  }
}

showIconProduct(String product) {
  IconData iconHotel = Icons.hotel;
  IconData iconFlight = Icons.airplanemode_active_outlined;
  return product == 'HOTEL' ? iconHotel : iconFlight;
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
        showIconProduct(product),
        color: Colors.black,
        size: 20,
      ),
    ),
  );
}

Widget datesTrip(String initDate, String finalDate) {
  return Container(
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
}

Widget destinationTrip(String destination) {
  return Container(
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
}
