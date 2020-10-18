import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  final String textDummy =
      """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus odio ut lorem tincidunt viverra. Suspendisse iaculis congue commodo. In sagittis sollicitudin quam at aliquam. Phasellus finibus nibh a erat tincidunt dignissim. Suspendisse maximus turpis maximus justo egestas, a congue enim tempus. In enim sem, volutpat id massa gravida, pellentesque ullamcorper augue. Cras ut augue eu felis commodo posuere. Nulla facilisi. Nulla a ex in leo elementum vulputate vel sit amet purus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis non egestas odio. Nunc tortor purus, molestie nec efficitur eu, feugiat auctor urna.

Pellentesque maximus sem ac dui ultricies, id finibus velit congue. Nullam vulputate ligula porttitor ante feugiat, feugiat mattis lectus hendrerit. Nunc lacinia turpis enim, at ultrices quam ullamcorper vel. Cras ut iaculis nisi. Sed ultrices justo et imperdiet tincidunt. Nulla facilisi. Pellentesque sed aliquet mauris. Cras sagittis porttitor sollicitudin.""";
  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: EdgeInsets.only(top: 323, right: 3),
      child: Icon(Icons.star, color: Colors.yellow),
    );
    final descriptionText = Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Text(
        textDummy,
        textAlign: TextAlign.justify,
      ),
      alignment: Alignment.centerLeft,
    );
    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20),
          child: Text(
            "Duwili Ella",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          children: <Widget>[star, star, star, star, star],
        )
      ],
    );
    final container = Column(
      children: <Widget>[titleStars, descriptionText],
    );
    return container;
  }
}
