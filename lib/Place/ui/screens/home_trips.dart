import 'package:flutter/material.dart';
import '../widgets/description_place.dart';
import '../widgets/review_list.dart';
import 'header_appbar.dart';

// ignore: must_be_immutable
class HomeTrips extends StatelessWidget {
  String descriptionDummy =
      '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus odio ut lorem tincidunt viverra. Suspendisse iaculis congue commodo. In sagittis sollicitudin quam at aliquam. Phasellus finibus nibh a erat tincidunt dignissim. Suspendisse maximus turpis maximus justo egestas, a congue enim tempus. In enim sem, volutpat id massa gravida, pellentesque ullamcorper augue.''';
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      ListView(
        children: <Widget>[
          DescriptionPlace('Miami Resort', 5, descriptionDummy),
          ReviewList(),
        ],
      ),
      HeaderAppBar()
    ]);
  }
}
