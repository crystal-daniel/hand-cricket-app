import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startPlaying, {super.key});
  final void Function() startPlaying;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'HAND CRICKET',
            textAlign: TextAlign.center,
            style: GoogleFonts.pressStart2p(color: Colors.white, fontSize: 45),
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            "assets/logo.png",
            height: 250,
          ),
          const SizedBox(
            height: 35,
          ),
          ElevatedButton(
            onPressed: startPlaying,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(15),
              backgroundColor: Colors.yellow,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: const Text(
              'Start Playing',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
