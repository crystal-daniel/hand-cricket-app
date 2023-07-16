import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserChoose extends StatelessWidget {
  const UserChoose(this.playScreen, {super.key});
  final void Function(int data) playScreen;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'CONGRATULATIONS!\nYOU HAVE WON THE TOSS!',
            textAlign: TextAlign.center,
            style: GoogleFonts.rowdies(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Choose your decision',
            style: GoogleFonts.rowdies(
              color: const Color.fromARGB(255, 241, 108, 108),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    playScreen(1);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.yellow,
                    padding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: const Text('Bat', style: TextStyle(fontSize: 20)),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    playScreen(0);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.yellow,
                    padding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: const Text(
                    'Bowl',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
