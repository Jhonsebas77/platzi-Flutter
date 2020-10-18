import 'package:flutter/material.dart';
import './widget/description_place.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String descriptionDummy =
      """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus odio ut lorem tincidunt viverra. Suspendisse iaculis congue commodo. In sagittis sollicitudin quam at aliquam. Phasellus finibus nibh a erat tincidunt dignissim. Suspendisse maximus turpis maximus justo egestas, a congue enim tempus. In enim sem, volutpat id massa gravida, pellentesque ullamcorper augue. Cras ut augue eu felis commodo posuere. Nulla facilisi. Nulla a ex in leo elementum vulputate vel sit amet purus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis non egestas odio. Nunc tortor purus, molestie nec efficitur eu, feugiat auctor urna.

Pellentesque maximus sem ac dui ultricies, id finibus velit congue. Nullam vulputate ligula porttitor ante feugiat, feugiat mattis lectus hendrerit. Nunc lacinia turpis enim, at ultrices quam ullamcorper vel. Cras ut iaculis nisi. Sed ultrices justo et imperdiet tincidunt. Nulla facilisi. Pellentesque sed aliquet mauris. Cras sagittis porttitor sollicitudin.""";
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
        body: new DescriptionPlace('Miami Resort', 5, descriptionDummy),
      ),
    );
  }
}
