import 'package:flutter/material.dart';
import 'package:dicee/main.dart';
import 'package:dicee/Page2.dart';
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [
             Padding(
               padding: const EdgeInsets.only(right: 20),
               child: Text('اختر',style:TextStyle(fontSize: 30) ,),
             ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(

              textColor: Colors.white,
              child: Text('كل نرد على حدا',
                style: TextStyle(fontSize: 30),
                ),
              color: Colors.yellow,
              elevation: 32,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DicePage();
                }
                ),
                );
              },
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.yellow,
              child: Text('النردين معاً',
              style: TextStyle(
                fontSize: 30,
              ),),
              elevation: 32,
              onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DicePage2();
                }
                ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}