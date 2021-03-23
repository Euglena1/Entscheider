import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Center(
            child: Text("Soll ich das tun?", textScaleFactor: 2),
          ),
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var BallAnswer = 1;
  void ChangeAnswer() {
    setState(() {
      BallAnswer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    ChangeAnswer();
                  },
                  child: Image.asset("images/Saru.PNG")),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    ChangeAnswer();
                  },
                  child: Image.asset("images/meal.png")),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    ChangeAnswer();
                  },
                  child: Image.asset("images/Schatz.JPG")),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    ChangeAnswer();
                  },
                  child: Image.asset("images/Katze.JPG")),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text(
                "Star Trek",
                style: TextStyle(fontFamily: "Pacifico"),
              ),
              padding: EdgeInsetsDirectional.fromSTEB(20, 12, 24, 12),
            ),
            Container(
              child: Text(
                "Essen",
                style: TextStyle(fontFamily: "Pacifico"),
              ),
              padding: EdgeInsetsDirectional.fromSTEB(30, 12, 32, 12),
            ),
            Container(
              child: Text(
                "Schatz kuscheln",
                style: TextStyle(fontFamily: "Pacifico"),
              ),
              padding: EdgeInsetsDirectional.fromSTEB(5, 12, 40, 12),
            ),
            Container(
              child: Text(
                "Katze",
                style: TextStyle(fontFamily: "Pacifico"),
              ),
              padding: EdgeInsetsDirectional.fromSTEB(1, 12, 1, 12),
            ),
          ],
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              ChangeAnswer();
            },
            child: Image.asset("images/ball$BallAnswer.png"),
          ),
        ),
      ],
    );
  }
}
