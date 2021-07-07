import 'package:dnd_veilenar_assistant/pages/dice_roller_page/providers/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiceWidget extends StatefulWidget {
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
  _DiceWidgetState createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  @override
  Widget build(BuildContext context) {
    final diceRoller = Provider.of<DiceRoller>(context);
    return InkWell(
      onTap: () => widget.isPreview
          ? diceRoller.addDice(diceType: widget.diceType)
          : diceRoller.removeDice(index: widget.index),
      child: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/images/dices/${dicePath[widget.diceType]}',
              width: 50,
            ),
            widget.diceType == DiceType.d4
                ? Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      widget.isPreview
                          ? diceMaxValue[widget.diceType].toString()
                          : diceRoller.dices[widget.index].value.toString(),
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  )
                : Text(
                    widget.isPreview
                        ? diceMaxValue[widget.diceType].toString()
                        : diceRoller.dices[widget.index].value.toString(),
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
          ],
        ),
      ),
    );
  }
}
