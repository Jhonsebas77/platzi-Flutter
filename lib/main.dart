import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Challenge 2º"),
        ),
        body: Stack(
          children: <Widget>[
            Container(
                height: double.infinity,
                child: Image(
                  image: AssetImage('src/Assets/images/BG_Image.png'),
                  fit: BoxFit.cover,
                )),
            Center(child: Container(color: Colors.black12, height: 100)),
            Center(
                child: Text("POKEMON",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 30.0)))
          ],
        ),
      ),
    );
  }
}
