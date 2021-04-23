import 'package:flutter/material.dart';
import 'package:nlw5_quiz_flutter/home/home_page.dart';
import 'package:nlw5_quiz_flutter/splash/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevQuiz',
      home: HomePage(),
    );
  }
}
