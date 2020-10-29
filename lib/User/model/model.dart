import 'package:flutter/cupertino.dart';

class User {
  final String name;
  final String email;
  final String photoURL;

  User(
      {Key key,
      @required this.name,
      @required this.email,
      @required this.photoURL});
}