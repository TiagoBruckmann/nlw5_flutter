import 'package:flutter/cupertino.dart';
import 'package:nlw5_quiz_flutter/home/home_repository.dart';
import 'package:nlw5_quiz_flutter/home/home_state.dart';
import 'package:nlw5_quiz_flutter/shared/models/quiz_model.dart';
import 'package:nlw5_quiz_flutter/shared/models/user_model.dart';

class HomeController {

  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

    void getUser() async {
      state = HomeState.loading;
      user = await repository.getUser();
      state = HomeState.sucess;
    }

    void getQuizzes() async {
      state = HomeState.loading;
      quizzes = await repository.getQuizzes();
      state = HomeState.sucess;
    }

}