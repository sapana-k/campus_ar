import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/modifiedCards.dart';

class LabsPage extends StatefulWidget {
  const LabsPage({Key? key}) : super(key: key);
  static const String id = 'labs_screen';
  @override
  State<LabsPage> createState() => _LabsPageState();
}

class _LabsPageState extends State<LabsPage> {
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
              ListTile(title: Text('Lab 1')),
              ListTile(title: Text('Lab 2')),
              ListTile(title: Text('Lab 3')),
              ListTile(title: Text('Lab 4')),
            ],
          ),
        ),
      ),
    );
  }
}
