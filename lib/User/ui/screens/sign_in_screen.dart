import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widget/gradient_back.dart';
import 'package:platzi_trips_app/widget/button_green.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
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
                onPressed: () {},
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
