import 'package:flutter/material.dart';
import './widget/description_place.dart';
import './widget/review.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  String descriptionDummy =
      '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus odio ut lorem tincidunt viverra. Suspendisse iaculis congue commodo. In sagittis sollicitudin quam at aliquam. Phasellus finibus nibh a erat tincidunt dignissim. Suspendisse maximus turpis maximus justo egestas, a congue enim tempus. In enim sem, volutpat id massa gravida, pellentesque ullamcorper augue.''';
  String pathImage = "src/Assets/Images/photo_jsob.png";
  String nameUser = 'Sebastian Otalora';
  String details = '1 Review 5 photos';
  String comment = 'There is a Amazing Place Here';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Hello World"),
          ),
          body: Container(
              margin: EdgeInsets.only(top: 320.0),
              child: Column(
                children: [
                  new DescriptionPlace('Miami Resort', 5, descriptionDummy),
                  Review(pathImage, nameUser, details, comment)
                ],
              ))),
    );
  }
}
