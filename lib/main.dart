import 'package:flutter/material.dart';
// import './widget/platzi_trips.dart';
import 'platzi_trips_cupertino.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  String descriptionDummy =
      '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus odio ut lorem tincidunt viverra. Suspendisse iaculis congue commodo. In sagittis sollicitudin quam at aliquam. Phasellus finibus nibh a erat tincidunt dignissim. Suspendisse maximus turpis maximus justo egestas, a congue enim tempus. In enim sem, volutpat id massa gravida, pellentesque ullamcorper augue.''';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: PlatziTrips(),
      home: PlatziTripsCupertino(),
    );
  }
}
