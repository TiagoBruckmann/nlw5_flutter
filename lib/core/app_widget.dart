// import pacotes nativos flutter
import 'package:flutter/material.dart';

// import das telas
import 'package:nlw5_quiz_flutter/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: HomePage(),
    );
  }
}
