import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Search/ui/widget/TripCard.dart';

// ignore: must_be_immutable
class SearchTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
      child: Center(
        child: Column(
          children: [
            TripCard(
              destination: 'Cupertino',
              finalDate: '5 de Oct',
              initDate: '7 de Dic',
              pathImage: "src/Assets/Images/IMG_1.jpg",
              function: () => print('Press Card and Go TO -> Cupertino'),
            ),
            TripCard(
              destination: 'Miami',
              finalDate: '8 de Dic',
              initDate: '4 de Ene',
              pathImage: "src/Assets/Images/IMG_3.jpg",
              function: () => print('Press Card and Go TO -> Miami'),
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
