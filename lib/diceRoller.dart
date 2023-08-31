import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
final randomizer = Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    // TODO: implement createState
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var active = 'assets/images/dice-1.png';
  void rolldice(){
    int S = randomizer.nextInt(6) + 1;
    setState(() {
      active =  'assets/images/dice-$S.png';
    });
  }
  @override

  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          active,
          width: 200,
        ),
        const SizedBox(height:20),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top:20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text("Roll Dice"),
        )
      ],
    );
  }
}