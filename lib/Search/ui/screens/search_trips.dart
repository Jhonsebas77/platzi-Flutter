import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Search/ui/widget/custom_gradient_button.dart';

// ignore: must_be_immutable
class SearchTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.greenAccent,
        child: Center(
          child: CustomGradientButton(
            width: 300,
            height: 50,
            function: () => print('Hola Mundo!'),
            gradientColors: [Colors.yellow, Colors.blue, Colors.red],
            textButton: Text(
              'Colombia',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            initialPosition: Alignment.topCenter,
            finalPosition: Alignment.bottomCenter,
            leadingIcon: Icon(
              Icons.account_box,
              color: Colors.white,
            ),
            finalIcon: Icon(
              Icons.flag,
              color: Colors.white,
            ),
          ),
        ));
  }
}
