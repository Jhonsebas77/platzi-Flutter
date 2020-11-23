import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:platzi_trips_app/User/model/user.dart';
import 'package:platzi_trips_app/User/ui/screens/profile_header.dart';
import 'package:platzi_trips_app/User/ui/widgets/profile_places_list.dart';
import 'package:platzi_trips_app/widget/gradient_back.dart';

class ProfileTrips extends StatelessWidget {
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);
    double screenHeight = MediaQuery.of(context).size.height;
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
          case ConnectionState.none:
            return CircularProgressIndicator();
          case ConnectionState.active:
          case ConnectionState.done:
            return showProfileData(snapshot, screenHeight);
        }
      },
      stream: userBloc.authStatus,
    );
  }

  Widget showProfileData(AsyncSnapshot snapshot, double screenHeight) {
    if (!snapshot.hasData || snapshot.hasError) {
      return Stack(
        children: <Widget>[Text('Usuario no logeado, Inicia Sesion')],
      );
    } else {
      final user = User(
        name: snapshot.data.displayName,
        email: snapshot.data.email,
        photoURL: snapshot.data.photoUrl,
        uid: snapshot.data.uid,
      );
      return Stack(
        children: <Widget>[
          GradientBack(height: screenHeight * 0.45),
          ListView(
            children: <Widget>[
              ProfileHeader(user),
              ProfilePlacesList(user),
            ],
          ),
        ],
      );
    }
  }
}
