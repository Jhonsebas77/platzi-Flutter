import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Search/ui/widget/itemCard.dart';

class TripCard extends StatelessWidget {
  final String destination;
  final String initDate;
  final String finalDate;
  final Function function;
  final String pathImage;
  final List<String> productList;
  TripCard({
    Key key,
    @required this.destination,
    @required this.finalDate,
    @required this.initDate,
    @required this.function,
    @required this.pathImage,
    @required this.productList,
  });
  @override
  Widget build(BuildContext context) {
    Alignment initialPosition = Alignment.topCenter;
    Alignment finalPosition = Alignment.bottomCenter;
    final decorationImage = BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(pathImage),
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15,
            offset: Offset(0, 7),
          )
        ]);
    final cardImage = renderCardWithDecoration(decorationImage);
    final colorGradientGray = LinearGradient(
      colors: [
        Colors.transparent,
        Colors.transparent,
        Colors.black12,
        Colors.black45,
      ],
      begin: initialPosition,
      end: finalPosition,
    );
    final decorationGradient = BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
        gradient: colorGradientGray,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15,
            offset: Offset(0, 7),
          )
        ]);
    final cardGradient = renderCardWithDecoration(decorationGradient);
    return InkWell(
        onTap: function,
        child: Stack(
          textDirection: TextDirection.ltr,
          alignment: Alignment(0.9, 1.1),
          children: <Widget>[
            cardImage,
            cardGradient,
            ItemCard(
                destination: destination,
                initDate: initDate,
                finalDate: finalDate,
                productList: productList),
          ],
        ));
  }
}

Widget renderCardWithDecoration(BoxDecoration decoration) {
  double width = 328;
  double height = 230;
  double left = 16;
  double right = 16;
  return Container(
    height: height,
    width: width,
    margin: EdgeInsets.only(
      left: left,
      right: right,
      bottom: 16,
    ),
    decoration: decoration,
  );
}
