import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Search/ui/widget/productIcon.dart';

class ItemCard extends StatelessWidget {
  final String destination;
  final String initDate;
  final String finalDate;
  final List<String> productList;

  const ItemCard({
    Key key,
    @required this.destination,
    @required this.initDate,
    @required this.finalDate,
    @required this.productList,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
      child: Column(
        textDirection: TextDirection.ltr,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 16,
              left: 16,
              bottom: 122,
            ),
            child: renderProductList(productList),
          ),
          destinationTrip(destination),
          datesTrip(initDate, finalDate)
        ],
      ),
    );
  }
}

Widget renderProductList(List<String> productList) {
  List<ProductIcon> productIconList = List<ProductIcon>();
  productList.forEach((p) {
    productIconList.add(ProductIcon(product: p));
  });
  return Container(
    child: Row(
      children: productIconList,
    ),
  );
}

Widget datesTrip(String initDate, String finalDate) {
  return Container(
      margin: EdgeInsets.only(left: 16),
      alignment: Alignment.bottomLeft,
      child: Text(
        '$initDate - $finalDate',
        textDirection: TextDirection.ltr,
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
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
      ));
}
