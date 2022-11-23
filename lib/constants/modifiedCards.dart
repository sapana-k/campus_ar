import 'package:flutter/material.dart';

class RoundCards extends StatelessWidget {
  IconData icon;
  String text;
  RoundCards({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Icon(
              icon,
              color: Color(0x0FF800000),
              size: 50.0,
            ),
            SizedBox(
              height: 3.0,
            ),
            Text(text)
          ],
        ),
      ),
      elevation: 3.0,
      shape: CircleBorder(),
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
    );
  }
}

class tileCard extends StatelessWidget {
  IconData icon;
  String text;
  VoidCallback toDo;
  tileCard({required this.icon, required this.text, required this.toDo});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Color(0xFFFFF4F4),
        onTap: toDo,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 120.0,
            minWidth: 120.0,
            maxHeight: 120.0,
            minHeight: 120.0,
          ),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              children: [
                Icon(
                  icon,
                  color: Color(0x0FF800000),
                  size: 60.0,
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0x0FF800000),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      elevation: 3.0,
      //shape: CircleBorder(),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
    );
  }
}
