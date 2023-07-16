import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Toss extends StatelessWidget {
  const Toss(this.switchScreen, {super.key});
  final void Function(int data) switchScreen;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'WELCOME TO THE TOSS!',
            style: GoogleFonts.fjallaOne(
              color: Colors.white,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          Text(
            'CHOOSE HEADS OR TAILS',
            style: GoogleFonts.fjallaOne(
                color: const Color.fromARGB(255, 241, 108, 108)),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  switchScreen(0);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, top: 20, bottom: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: const Text(
                  'Heads',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(width: 30),
              ElevatedButton(
                onPressed: () {
                  switchScreen(1);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.only(
                      left: 50, right: 50, top: 20, bottom: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: const Text(
                  'Tails',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
