import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  const GradientContainer.purple({super.key})
      : color1 = const Color.fromARGB(255, 76, 6, 89),
        color2 = const Color.fromARGB(255, 33, 2, 87);
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], 
            begin: startAlignment, 
            end: endAlignment
        ),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}
