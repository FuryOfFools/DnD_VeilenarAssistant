import 'package:dnd_veilenar_assistant/pages/dice_roller_page/providers/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiceWidget extends StatelessWidget {
  final DiceType diceType;
  final bool isPreview;
  final int index;
  const DiceWidget({
    Key? key,
    required this.diceType,
    this.isPreview = true,
    this.index = -1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final diceRoller = Provider.of<DiceRoller>(context);
    return InkWell(
      onTap: () => isPreview
          ? diceRoller.addDice(diceType: diceType)
          : diceRoller.removeDice(index: index),
      child: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/images/dices/${dicePath[diceType]}',
              width: 50,
            ),
            diceType == DiceType.d4
                ? Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      isPreview
                          ? diceMaxValue[diceType].toString()
                          : diceRoller.dices[index].value.toString(),
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  )
                : Text(
                    isPreview
                        ? diceMaxValue[diceType].toString()
                        : diceRoller.dices[index].value.toString(),
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
          ],
        ),
      ),
    );
  }
}
