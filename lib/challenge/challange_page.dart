import 'package:flutter/material.dart';
import 'package:nlw5_quiz_flutter/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:nlw5_quiz_flutter/challenge/widgets/quiz/quiz_widget.dart';

class ChallangePage extends StatefulWidget {
  @override
  _ChallangePageState createState() => _ChallangePageState();
}

class _ChallangePageState extends State<ChallangePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
          child: QuestionIndicatorWidget(),
        ),
      ),

      body: QuizWidget(
        title: "O que o Flutter faz em sua totalidade?",
      ),
    );
  }
}
