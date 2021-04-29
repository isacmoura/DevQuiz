import 'package:devquiz/home/widgets/appBar/app_bar_widget.dart';
import 'package:devquiz/home/widgets/levelButton/level_button_widget.dart';
import 'package:devquiz/home/widgets/quizCard/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
        child: Column(
          children: [
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
            Expanded(
              child: GridView.count(
                padding: const EdgeInsets.only(top: 24),
                crossAxisSpacing: 8,
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                children: [
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
