import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Dice Rollar'),
          backgroundColor: Colors.black,
        ),
        body: DiceRollar(),
      ),
    ),
  );
}

class DiceRollar extends StatefulWidget {
  @override
  _DiceRollarState createState() => _DiceRollarState();
}

class _DiceRollarState extends State<DiceRollar> {
  int dicNUm = 1;
  void changeDiceFace() {
    setState(() {
      dicNUm = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 55.0, 0, 0),
            child: Text(
              'You got $dicNUm',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice$dicNUm.png',
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
        ],
      ),
    );
  }
}
