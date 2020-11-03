import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widget/gradient_back.dart';
import 'package:platzi_trips_app/widget/text_input.dart';
import 'package:platzi_trips_app/widget/title_header.dart';

class AddPlaceScreen extends StatefulWidget {
  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    final _controllerTitleText = TextEditingController();
    final _controllerDescriptionText = TextEditingController();
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(
            height: 300,
          ),
          Row(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(top: 25, left: 5),
                  child: SizedBox(
                    height: 45,
                    width: 45,
                    child: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                        size: 45,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )),
              Flexible(
                  child: Container(
                width: screenWidth,
                child: TitleHeader(
                  title: 'Add a new place',
                  padding: EdgeInsets.only(top: 45, left: 20, right: 10),
                ),
              )),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 120, bottom: 20),
            child: ListView(
              children: <Widget>[
                Container(), // Foto
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextInput(
                    hintText: 'Title',
                    inputType: null,
                    maxLines: 1,
                    controller: _controllerTitleText,
                  ),
                ),
                TextInput(
                  hintText: 'Description',
                  inputType: TextInputType.multiline,
                  maxLines: 4,
                  controller: _controllerDescriptionText,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
