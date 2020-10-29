import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'circle_button.dart';

class ButtonsBar extends StatelessWidget {
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            CircleButton(true, Icons.person, 20.0,
                Color.fromRGBO(255, 255, 255, 1), () => {}),
            CircleButton(false, Icons.add, 40.0,
                Color.fromRGBO(255, 255, 255, 1), () => {}),
            CircleButton(true, Icons.exit_to_app_rounded, 20.0,
                Color.fromRGBO(255, 255, 255, 1), () => {userBloc.signOut()})
          ],
        ));
  }
}
