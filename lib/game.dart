import 'package:flutter/material.dart';
import 'package:cflex/constants.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key, required this.level}) : super(key: key);

  final int level;

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<GamePage> {
  int answersCorrect = 0;
  int numberOfLives = 0;
  int difficultySelected = 0;

  @override
  void initState() {
    numberOfLives = 3;
    answersCorrect = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        children: [
          Align(alignment: Alignment.center, child: countDownTimer())
        ],
      )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget countDownTimer() {
    return Container(child: Text("0:05"));
  }
  // Widget colorQuestion (){ }
  // Widget colorAnswers(){ }
  // Widget currentLvl(){ }
  // Widget currentScore(){ }

}
