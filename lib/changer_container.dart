import 'dart:math';

import 'package:flutter/material.dart';

class ChangerContainer extends StatefulWidget {
  const ChangerContainer({super.key});

  @override
  State<ChangerContainer> createState() => _ChangerConatinerState();
}

class _ChangerConatinerState extends State<ChangerContainer> {
  int red = 76;
  int green = 175;
  int blue = 80;
  String direction = 'Vertical';
  int count = 0;

  late var color = Color.fromRGBO(red, green, blue, 1);
  List<String> directions = [
    'Vertical',
    'Horizontal',
    'Left-Right',
    'Right-Left',
  ];

  void changeColor() {
    setState(() {
      red = Random().nextInt(257) + 1;
      green = Random().nextInt(257) + 1;
      blue = Random().nextInt(257) + 1;
      color = Color.fromRGBO(red, green, blue, 1);
    });
  }

  void changeDirection() {
    setState(() {
      count++;
      if (count >= directions.length) {
        count = 0;
      }
      direction = directions[count];
    });
  }

  @override
  Widget build(BuildContext context) {
    Alignment alignmentBegin;
    Alignment alignmentEnd;

    if (direction == 'Vertical') {
      alignmentBegin = Alignment.centerRight;
      alignmentEnd = Alignment.centerLeft;
    } else if (direction == 'Horizontal') {
      alignmentBegin = Alignment.topCenter;
      alignmentEnd = Alignment.bottomCenter;
    } else if (direction == 'Left-Right') {
      alignmentBegin = Alignment.topLeft;
      alignmentEnd = Alignment.bottomRight;
    } else {
      alignmentBegin = Alignment.topRight;
      alignmentEnd = Alignment.bottomLeft;
    }

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color, Colors.white, color],
          begin: alignmentBegin,
          end: alignmentEnd,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            OutlinedButton(
              onPressed: changeColor,
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white),
              ),
              child: const Text(
                'Change Color',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Red: $red Green: $green Blue: $blue",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(height: 50),
            OutlinedButton(
              onPressed: changeDirection,
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white),
              ),
              child: Text(
                'Change Direction',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Direction: $direction",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
