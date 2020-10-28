import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widget/gradient_back.dart';
import 'package:platzi_trips_app/widget/button_green.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return signInGoogle();
  }

  Widget signInGoogle() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack('', null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '''Welcome. \nThis is your Travel App ''',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 37,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ButtonGreen(
                text: 'Login with Gmail',
                onPressed: () {
                  userBloc.signIn().then(
                      (FirebaseUser user) => print("El usuario es $user"));
                },
                width: 300,
                height: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
