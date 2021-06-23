import 'package:dnd_veilenar_assistant/pages/dice_roller_page/providers/dice_roller.dart';
import 'package:dnd_veilenar_assistant/pages/dice_roller_page/widgets/dice.dart';
import 'package:flutter/material.dart';

class DiceBoxWidget extends StatelessWidget {
  const DiceBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.blueGrey,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(2, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'Коробочка Костей',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12, left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DiceWidget(diceType: DiceType.d4),
                  DiceWidget(diceType: DiceType.d6),
                  DiceWidget(diceType: DiceType.d10),
                  DiceWidget(diceType: DiceType.d12),
                  DiceWidget(diceType: DiceType.d20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
