import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.playAgain, this.userScore, this.sysScore, this.res,
      {super.key});
  final void Function() playAgain;
  final int userScore, sysScore, res;
  @override
  Widget build(context) {
    String result, firstLine, secondLine;
    if (res == 0) {
      firstLine = "SYSTEM'S SCORE: $sysScore";
      secondLine = "YOUR SCORE: $userScore";
      if (userScore > sysScore) {
        result = 'YOU WON! You successfully chased down the Target';
      } else if (userScore < sysScore) {
        result = 'SYSTEM WON! by ${sysScore - userScore} runs';
      } else {
        result = "IT IS A DRAW";
      }
    } else {
      secondLine = "SYSTEM'S SCORE: $sysScore";
      firstLine = "YOUR SCORE: $userScore";
      if (userScore > sysScore) {
        result = 'YOU WON! by ${userScore - sysScore} runs';
      } else if (userScore < sysScore) {
        result = 'SYSTEM WON! System successfully chased down the Target';
      } else {
        result = "IT IS A DRAW";
      }
    }

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            firstLine,
            style: GoogleFonts.rowdies(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            secondLine,
            style: GoogleFonts.rowdies(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  result,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inconsolata(
                    color: const Color.fromARGB(255, 241, 108, 108),
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          ElevatedButton(
            onPressed: playAgain,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(15),
              backgroundColor: Colors.yellow,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: const Text(
              'Play Again',
              style: TextStyle(fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
