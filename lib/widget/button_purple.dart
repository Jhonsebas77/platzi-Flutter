import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonPurple extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  ButtonPurple({
    Key key,
    @required this.buttonText,
    @required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 20, right: 20),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 50,
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                  colors: [Color(0xFFFDC364), Color(0xFFF57958)],
                  begin: FractionalOffset(0.2, 0),
                  end: FractionalOffset(1, 0.6),
                  stops: [0, 0.6],
                  tileMode: TileMode.clamp)),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                  fontSize: 18, fontFamily: 'Lato', color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
