import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onPressed;
  FloatingActionButtonGreen({
    Key key,
    @required this.iconData,
    @required this.onPressed,
  });
  @override
  _FloatingActionButtonGreenState createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen>
    with AutomaticKeepAliveClientMixin {
  // bool isPressed = false;
  // void onPressedFav() {
  //   setState(() {
  //     isPressed = !isPressed;
  //     Scaffold.of(context).showSnackBar(SnackBar(
  //       content: isPressed
  //           ? Text("Added to favorites")
  //           : Text("Removed from favorites"),
  //     ));
  //   });
  // }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
      backgroundColor: Colors.green,
      mini: true,
      tooltip: "Fav",
      onPressed: widget.onPressed,
      child: Icon(widget.iconData),
      // child: Icon(isPressed == true ? Icons.favorite : Icons.favorite_border),
    );
  }
}
