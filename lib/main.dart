import 'package:campus_ar/screens/classrooms.dart';
import 'package:campus_ar/screens/food.dart';
import 'package:campus_ar/screens/labs.dart';
import 'package:campus_ar/screens/sports.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';
import 'package:campus_ar/ar/ArObject.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        ArObjectPage.id: (context) => ArObjectPage(),
        FoodPage.id: (context) => FoodPage(),
        LabsPage.id: (context) => LabsPage(),
        SportsPage.id: (context) => SportsPage(),
        ClassroomsPage.id: (context) => ClassroomsPage(),
      },
    );
  }
}
