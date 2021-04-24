import 'package:flutter/material.dart';
import 'package:nlw5_quiz_flutter/challenge/widgets/awnser/awnser_widget.dart';
import 'package:nlw5_quiz_flutter/core/app_text_styles.dart';

class QuizWidget extends StatelessWidget {

  final String title;
  QuizWidget({ required this.title });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AwnserWidget(
            isRight: true,
            isSelected: true,
            title: "Possibilita a criação de aplicativos compilados nativamente",
          ),
          AwnserWidget(
            title: "Possibilita a criação de aplicativos compilados nativamente",
          ),
          AwnserWidget(
            title: "Possibilita a criação de aplicativos compilados nativamente",
          ),
          AwnserWidget(
            title: "Possibilita a criação de aplicativos compilados nativamente",
          )
        ],
      ),
    );
  }
}
