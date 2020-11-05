import 'dart:io';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:platzi_trips_app/Place/ui/screens/add_place_screen.dart';
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
            CircleButton(
                false,
                Icons.add,
                40.0,
                Color.fromRGBO(255, 255, 255, 1),
                () => {showPickDialog(context)}),
            CircleButton(true, Icons.exit_to_app_rounded, 20.0,
                Color.fromRGBO(255, 255, 255, 1), () => {userBloc.signOut()})
          ],
        ));
  }
}

Future<void> showPickDialog(BuildContext context) async {
  final picker = ImagePicker();
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Toma una fotografía de tu cámara o elige una de tu galería',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Lato',
              fontSize: 16,
            ),
          ),
          actions: <Widget>[
            FlatButton(
                child: Text(
                  'Cámara',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lato',
                      fontSize: 14),
                ),
                onPressed: () {
                  picker
                      .getImage(
                    source: ImageSource.camera,
                    maxWidth: 640,
                    maxHeight: 480,
                    imageQuality: 50,
                  )
                      .then((PickedFile image) {
                    Navigator.pop(context);
                    if (image != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => AddPlaceScreen(
                            image: File(image.path),
                          ),
                        ),
                      );
                    }
                  }).catchError((onError) => print(onError));
                }),
            FlatButton(
                child: Text(
                  'Galería',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lato',
                      fontSize: 14),
                ),
                onPressed: () {
                  picker
                      .getImage(
                    source: ImageSource.gallery,
                    maxWidth: 640,
                    maxHeight: 480,
                    imageQuality: 50,
                  )
                      .then((PickedFile image) {
                    Navigator.pop(context);
                    if (image != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => AddPlaceScreen(
                            image: File(image.path),
                          ),
                        ),
                      );
                    }
                  }).catchError((onError) => print(onError));
                })
          ],
        );
      });
}
