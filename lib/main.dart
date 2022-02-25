import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dicee/mainPage.dart';
void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home:(MainPage()),
  ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
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



