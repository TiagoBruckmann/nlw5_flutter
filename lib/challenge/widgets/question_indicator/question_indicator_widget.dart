import 'package:flutter/material.dart';
import 'package:nlw5_quiz_flutter/core/app_text_styles.dart';
import 'package:nlw5_quiz_flutter/shared/widgets/progress_indicator/progress_indicator.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric( horizontal: 20 ),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Questão 04",
                  style: AppTextStyles.body,
                ),
                Text(
                  "de 10",
                  style: AppTextStyles.body,
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ProgressIndicatorWidget(
                value: 0.4
            )
          ],
        ),
      ),
    );
  }
}
