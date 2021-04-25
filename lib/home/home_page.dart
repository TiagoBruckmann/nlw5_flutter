import 'package:flutter/material.dart';
import 'package:nlw5_quiz_flutter/challenge/widgets/quiz/quiz_widget.dart';
import 'package:nlw5_quiz_flutter/core/app_colors.dart';
import 'package:nlw5_quiz_flutter/home/home_controller.dart';
import 'package:nlw5_quiz_flutter/home/home_state.dart';
import 'package:nlw5_quiz_flutter/home/widgets/appbar/app_bar_widget.dart';
import 'package:nlw5_quiz_flutter/home/widgets/level_button/level_button_widget.dart';
import 'package:nlw5_quiz_flutter/home/widgets/quiz_card/quiz_card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = HomeController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getUser();
    controller.getQuizzes();
    controller.stateNotifier.addListener(() {
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if ( controller.state == HomeState.sucess ) {
      return Scaffold(
        appBar: AppBarWidget( user: controller.user!, ),
        body: Padding(
          padding: EdgeInsets.symmetric( horizontal: 20 ),
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LevelButtonWidget(
                    label: "Fácil",
                  ),
                  LevelButtonWidget(
                    label: "Médio",
                  ),
                  LevelButtonWidget(
                    label: "Difícil",
                  ),
                  LevelButtonWidget(
                    label: "Perito",
                  ),
                ],
              ),

              SizedBox(
                height: 24,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  crossAxisCount: 2,
                  children: controller.quizzes!.map((e) => QuizCardWidget(
                    title: e.title,
                    completed: "${e.questionAwnsered}/${e.questions.length}",
                    percent: e.questionAwnsered / e.questions.length,
                  )).toList(),
                ),
              ),

            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen),
          ),
        ),
      );
    }

  }
}
