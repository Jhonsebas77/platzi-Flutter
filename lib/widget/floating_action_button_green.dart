import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  _FloatingActionButtonGreenState createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen>
    with AutomaticKeepAliveClientMixin {
  bool isPressed = false;
  void onPressedFav() {
    setState(() {
      isPressed = !isPressed;
      Scaffold.of(context).showSnackBar(SnackBar(
        content: isPressed
            ? Text("Added to favorites")
            : Text("Removed from favorites"),
      ));
    });
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.green,
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(isPressed == true ? Icons.favorite : Icons.favorite_border),
    );
  }
}
