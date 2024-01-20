import 'package:flutter/material.dart';

import 'dart:math';

final Randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = 'assets/images/dice-2.png';
  var CurrentDiceRoll = 1;

  void rollDice() {
    // var DiceRoll = Random().nextInt(6) + 1;
    setState(() {
      CurrentDiceRoll = Randomizer.nextInt(6) + 1;
      // activeDiceImage = 'assets/images/dice-$activeDiceImage.png';
      // print('Dice rolled');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$CurrentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 40,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 40),
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 28),
            ),
            child: Text('Roll Dice'))
      ],
    );
  }
}
