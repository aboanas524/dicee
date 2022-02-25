import 'dart:math';
import 'package:dicee/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DicePage2 extends StatefulWidget {
  @override
  _DicePageState2 createState() => _DicePageState2();
}

class _DicePageState2 extends State<DicePage2> {
  int number1 = 1;
  int number2 = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(' نرد ',style: TextStyle(fontSize: 30),),
        elevation: 16,
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      number2 = Random().nextInt(6) + 1;
                      number1 = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image(
                    image: AssetImage('images/dice$number1.png'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      number1 = Random().nextInt(6) + 1;
                      number2 = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image(
                    image: AssetImage('images/dice$number2.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}