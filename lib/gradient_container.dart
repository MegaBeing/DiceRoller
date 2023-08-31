import "package:flutter/material.dart";
import "package:untitled/diceRoller.dart";
import "package:untitled/text_style.dart";

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorStart, this.colorStop, {super.key});
  final int colorStart;
  final int colorStop;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(colorStart),
            Color(colorStop),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
