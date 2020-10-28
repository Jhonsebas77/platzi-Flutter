import 'package:flutter/material.dart';

class ButtonGreen extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  double width = 0;
  double height = 0;

  ButtonGreen(
      {Key,
      key,
      @required this.text,
      @required this.onPressed,
      this.height,
      this.width});
  @override
  _ButtonGreenState createState() => _ButtonGreenState();
}

class _ButtonGreenState extends State<ButtonGreen> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed, // Parametros de la clase padre
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [Colors.greenAccent, Colors.green],
                begin: FractionalOffset(0.2, 0),
                end: FractionalOffset(1, 0.6),
                stops: [0, 0.9],
                tileMode: TileMode.clamp)),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
                fontSize: 18, fontFamily: 'Lato', color: Colors.white),
          ),
        ),
      ),
    );
  }
}
