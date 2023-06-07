// Import the packages
import 'package:flutter/material.dart';
import 'dart:math';

// Running the main core of project using responsive design
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Dice'),
        ),
        body: const Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}


// Generate rnadom Integer numbers between 0 and 6
class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;
  void changeDices() {
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                child: Image(image: AssetImage('images/dice$leftDice.png')),
                onPressed: () {
                  setState(() {
                    changeDices();
                  });
                },
              )),
          Expanded(
              child: TextButton(
                child: Image(image: AssetImage('images/dice$rightDice.png')),
                onPressed: () {
                  setState(() {
                    changeDices();
                  });
                },
              )),
        ],
      ),
    );
  }
}
