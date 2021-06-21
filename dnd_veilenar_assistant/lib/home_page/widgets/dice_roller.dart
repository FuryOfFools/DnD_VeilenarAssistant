import 'package:dnd_veilenar_assistant/model/home_page_dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class DiceRollerWidget extends StatelessWidget {
  const DiceRollerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color _rollInProgressColor = Colors.pinkAccent;
    const Color _rollDoneColor = Colors.greenAccent;
    final diceRoller = Provider.of<DiceRoller>(context);
    return Container(
      padding: const EdgeInsets.all(8),
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
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              'Dice Roller',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 25,
                letterSpacing: 1,
              ),
            ),
          ),
          InkWell(
            onTap: () => diceRoller.rollD20(),
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color:
                      diceRoller.isDone ? _rollDoneColor : _rollInProgressColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/dices/d20.svg',
                  ),
                  Text(
                    diceRoller.d20.toString(),
                    style: TextStyle(fontSize: 38, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              diceRoller.isDone
                  ? 'Click on dice to roll'
                  : 'Roll in progress...',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 17,
                letterSpacing: 0.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
