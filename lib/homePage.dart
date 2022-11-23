import 'package:campus_ar/screens/classrooms.dart';
import 'package:campus_ar/screens/food.dart';
import 'package:campus_ar/screens/labs.dart';
import 'package:campus_ar/screens/sports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants/modifiedCards.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //0xFFFFF7F7
      //0xFFFFF3F3
      backgroundColor: Color(0xFFFFF7F7),
      appBar: AppBar(
        title: Text('Campus AR Navigation'),
        backgroundColor: Color(0xFF800000),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(35.0, 18.0, 35.0, 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  tileCard(
                      icon: Icons.book,
                      text: 'Classroom',
                      toDo: () {
                        Navigator.pushNamed(context, ClassroomsPage.id);
                      }),
                  tileCard(
                      icon: Icons.food_bank_rounded,
                      text: 'Food',
                      toDo: () {
                        Navigator.pushNamed(context, FoodPage.id);
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  tileCard(
                      icon: Icons.computer_rounded,
                      text: 'Labs',
                      toDo: () {
                        Navigator.pushNamed(context, LabsPage.id);
                      }),
                  tileCard(
                      icon: Icons.sports_baseball_rounded,
                      text: 'Sports',
                      toDo: () {
                        Navigator.pushNamed(context, SportsPage.id);
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  tileCard(
                      icon: Icons.food_bank_rounded,
                      text: 'Food',
                      toDo: () {
                        Navigator.pushNamed(context, ClassroomsPage.id);
                      }),
                  tileCard(
                      icon: Icons.food_bank_rounded,
                      text: 'Food',
                      toDo: () {
                        Navigator.pushNamed(context, ClassroomsPage.id);
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundCards(icon: Icons.food_bank_rounded, text: 'Food'),
                  RoundCards(icon: Icons.food_bank_rounded, text: 'Food'),
                  RoundCards(icon: Icons.food_bank_rounded, text: 'Food'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
