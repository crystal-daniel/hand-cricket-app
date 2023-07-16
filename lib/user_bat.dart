import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserBat extends StatefulWidget {
  const UserBat(this.changeScreen, this.target, this.innings, {super.key});
  final void Function(int data, int target) changeScreen;
  final int target, innings;
  @override
  State<UserBat> createState() {
    return _UserBatState();
  }
}

class _UserBatState extends State<UserBat> {
  Random r = Random();
  int total = 0;
  void score(int data) {
    setState(() {
      int temp = r.nextInt(7) + 1;
      if (data != temp && total < widget.target) {
        total = total + data;
      }
      if (data == temp) {
        if (widget.innings == 0) {
          widget.changeScreen(total + 1, 0);
        } else {
          widget.changeScreen(total, 2);
        }
      } else if (total >= widget.target) {
        widget.changeScreen(total, 2);
      }
    });
  }

  @override
  Widget build(context) {
    String tar;
    if (widget.target == 9999) {
      tar = 'set a target';
    } else {
      tar = 'Target: ${widget.target}';
    }
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Your are batting now!',
            style: GoogleFonts.rowdies(
              color: const Color.fromARGB(255, 241, 108, 108),
              fontSize: 17,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'YOUR SCORE: $total',
            style: GoogleFonts.rowdies(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            tar,
            style: GoogleFonts.rowdies(
              color: const Color.fromARGB(255, 241, 108, 108),
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 100,
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
                    score(1);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    '1',
                    style: GoogleFonts.kanit(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    score(2);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    '2',
                    style: GoogleFonts.kanit(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    score(3);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    '3',
                    style: GoogleFonts.kanit(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
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
                    score(4);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    '4',
                    style: GoogleFonts.kanit(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    score(5);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    '5',
                    style: GoogleFonts.kanit(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    score(6);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    '6',
                    style: GoogleFonts.kanit(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
