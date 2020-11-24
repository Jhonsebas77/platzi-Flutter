import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Search/ui/widget/TripCard.dart';

// ignore: must_be_immutable
class SearchTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
      child: Center(
        child: ListView(
          children: [
            TripCard(
              destination: 'Nova Zelândia',
              initDate: '14 de set',
              finalDate: '17 de set',
              pathImage:
                  'https://s3.amazonaws.com/cvc-bancodeimagens/destinos/auckland-centro-visao-do-mar-nova-zelandia-1113858134.jpg',
              function: () => print('Press Card and Go TO -> Cupertino'),
              productList: ['HOTEL', 'HOTEL', 'FLIGHT'],
            ),
            TripCard(
              destination: 'Rio de Janeiro',
              initDate: '3 de set',
              finalDate: '8 de set',
              pathImage:
                  'https://s3.amazonaws.com/cvc-bancodeimagens/destinos/rio-de-janeiro-vista-aerea-cristo-redentor-rj-435627745.jpg',
              function: () => print('Press Card and Go TO -> Miami'),
              productList: ['FLIGHT', 'HOTEL'],
            ),
          ],
        ),
      ),
    );
  }
}
// return Container(
//         color: Colors.greenAccent,
//         child: Center(
//           child: CustomGradientButton(
//             width: 300,
//             height: 50,
//             function: () => print('Hola Mundo!'),
//             gradientColors: [Colors.yellow, Colors.blue, Colors.red],
//             textButton: Text(
//               'Colombia',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             initialPosition: Alignment.topCenter,
//             finalPosition: Alignment.bottomCenter,
//             leadingIcon: Icon(
//               Icons.account_box,
//               color: Colors.white,
//             ),
//             finalIcon: Icon(
//               Icons.flag,
//               color: Colors.white,
//             ),
//           ),
//         ));
