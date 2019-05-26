import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('The Magic 8 Ball'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  Random random = Random();
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Ask Me Anything.',
          style: TextStyle(
            fontFamily: 'ShadowsIntoLight',
            color: Colors.white,
            fontSize: 40.0,
          ),
        ),
        Text(
          'I will give you an answer..',
          style: TextStyle(
            fontFamily: 'ShadowsIntoLight',
            color: Colors.blue[100],
            fontSize: 30.0,
          ),
        ),
        Text(
          'An answer you may or may not like...',
          style: TextStyle(
            fontFamily: 'ShadowsIntoLight',
            color: Colors.blue[200],
            fontSize: 20.0,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        FlatButton(
          onPressed: () {
            setState(() {
              ballNumber = random.nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ],
    );
  }
}
