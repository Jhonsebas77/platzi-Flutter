import 'package:flutter/material.dart';

class CustomGradientButton extends StatelessWidget {
  final Function function;
  final double width;
  final double height;
  final Text textButton;
  final List<Color> gradientColors;
  final Alignment initialPosition;
  final Alignment finalPosition;
  final Icon leadingIcon;
  final Icon finalIcon;

  CustomGradientButton({
    Key key,
    @required this.function,
    @required this.width,
    @required this.height,
    @required this.textButton,
    @required this.gradientColors,
    @required this.initialPosition,
    @required this.finalPosition,
    this.leadingIcon,
    this.finalIcon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(height / 2),
                bottomLeft: Radius.circular(height / 2)),
            gradient: LinearGradient(
                colors: gradientColors,
                begin: initialPosition,
                end: finalPosition),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(2, -2),
                blurRadius: height * .1,
                spreadRadius: 1,
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            leadingIcon ?? Container(),
            textButton,
            finalIcon ?? Offstage(),
          ],
        ),
      ),
    );
  }
}
