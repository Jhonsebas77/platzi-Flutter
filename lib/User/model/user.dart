import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_app/Place/model/place.dart';

class User {
  final String uid;
  final String name;
  final String email;
  final String photoURL;
  final List<Place> myPlaces;
  final List<Place> myFavoritePlaces;

  User(
      {@required this.name,
      @required this.uid,
      @required this.email,
      @required this.photoURL,
      this.myPlaces,
      this.myFavoritePlaces});
}
