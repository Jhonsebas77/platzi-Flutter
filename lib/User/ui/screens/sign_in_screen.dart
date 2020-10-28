import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widget/gradient_back.dart';
import 'package:platzi_trips_app/widget/button_green.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_trips_app/platzi_trips_cupertino.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return PlatziTripsCupertino();
        } else if (snapshot.hasError) {
          return Text("Ocurrio un error en la transmision de datos");
        } else if (snapshot.connectionState != ConnectionState.waiting) {
          return signInGoogle();
        } else {
          return Container(
            color: Colors.white,
            alignment: Alignment.center,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                  height: 20,
                  width: 70,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.cyan[400],
                  )),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text("C a r g a n d o",
                    style: TextStyle(
                        color: Colors.blue[400],
                        fontSize: 22,
                        fontFamily: "Lato",
                        decoration: TextDecoration.none)),
              )
            ]),
          );
        }
      },
    );
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
