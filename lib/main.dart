import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Magic8Ball(),
      ),
    );

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballNumber = 3;
  void botReply() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("Ask Me Anything"),
          centerTitle: true,
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: FlatButton(
                child: Image.asset('images/ball$ballNumber.png'),
                onPressed: () {
                  botReply();
                }),
          ),
        ]));
  }
}
