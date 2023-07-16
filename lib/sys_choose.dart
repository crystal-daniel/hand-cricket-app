import 'package:flutter/material.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';

class SysChoose extends StatelessWidget {
  SysChoose(this.playScreen, {super.key});
  final void Function(int data) playScreen;
  final Random r = Random();
  @override
  Widget build(context) {
    final d = r.nextInt(2);
    String decision, temp;
    if (d == 0) {
      decision = 'The system has chosen to bat first';
      temp = 'start bowling';
    } else {
      decision = "The system has choosen to bowl first";
      temp = 'start batting';
    }
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'YOU HAVE LOST THE TOSS!',
            style: GoogleFonts.rowdies(color: Colors.white, fontSize: 30),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            decision,
            style: GoogleFonts.rowdies(
              color: const Color.fromARGB(255, 241, 108, 108),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              playScreen(d);
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(15),
              backgroundColor: Colors.yellow,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: Text(
              temp,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
