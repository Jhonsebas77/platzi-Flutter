import 'package:flutter/material.dart';
import 'package:platzi_trips_app/lib/presentation/platzi_trips_icons.dart';

class ProductIcon extends StatelessWidget {
  final String product;
  const ProductIcon({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Icon(
            showIconProduct(product),
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
    );
  }
}

showIconProduct(String product) {
  final iconByProduct = {
    'HOTEL': PlatziTrips.hotel_product,
    'FLIGHT': PlatziTrips.flight_product,
  };
  return iconByProduct[product];
}
