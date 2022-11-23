import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/modifiedCards.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);
  static const String id = 'food_screen';
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF7F7),
      appBar: AppBar(
        title: Text('Campus AR Navigation'),
        backgroundColor: Color(0xFF800000),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(35.0, 18.0, 35.0, 18.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ListTile(title: Text('Lipton')),
              ListTile(title: Text('Sagar Canteen')),
              ListTile(title: Text('Play Ground Canteen')),
              ListTile(title: Text('BackGate')),
            ],
          ),
        ),
      ),
    );
  }
}
