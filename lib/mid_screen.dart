import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MidScreen extends StatelessWidget {
  const MidScreen(this.secondInnings, this.dec, this.target, {super.key});
  final void Function() secondInnings;
  final int dec, target;
  @override
  Widget build(context) {
    String out, button;
    if (dec == 0) {
      out = 'The System got out';
      button = 'Start Batting';
    } else {
      out = 'You got out';
      button = "Start Bowling";
    }
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            out,
            textAlign: TextAlign.center,
            style: GoogleFonts.rowdies(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'The TARGET is $target',
            style: GoogleFonts.fjallaOne(
                color: const Color.fromARGB(255, 241, 108, 108), fontSize: 17),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: secondInnings,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(15),
              backgroundColor: Colors.yellow,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: Text(
              button,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
