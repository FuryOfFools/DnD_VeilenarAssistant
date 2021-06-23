import 'package:dnd_veilenar_assistant/pages/dice_roller_page/providers/dice_roller.dart';
import 'package:dnd_veilenar_assistant/pages/dice_roller_page/widgets/dice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiceTableWidget extends StatelessWidget {
  const DiceTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final diceRoller = Provider.of<DiceRoller>(context);
    if (diceRoller.diceRollerState == DiceRollerState.notEmpty) {
      return TableWidget(diceRoller: diceRoller);
    }
    if (diceRoller.diceRollerState == DiceRollerState.empty) {
      return EmptyTableWidget();
    } else
      return SizedBox();
  }
}

class EmptyTableWidget extends StatelessWidget {
  const EmptyTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          'Стол для костей пуст',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class TableWidget extends StatelessWidget {
  final DiceRoller diceRoller;
  const TableWidget({Key? key, required this.diceRoller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 15, left: 15, right: 15),
      child: Container(
        width: MediaQuery.of(context).size.width - 30,
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
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'Стол для Костей',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Column(
                children: _getAllRows(diceRoller.dices),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Row> _getAllRows(List<Dice> dices) {
    List<Row> rows = [];
    for (int i = 0; i < dices.length; i += 5) {
      List<Padding> diceWidgets = [];
      for (var j = 0; j < 5 && i + j < dices.length; j++) {
        diceWidgets.add(
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: DiceWidget(
              diceType: dices[i + j].diceType,
              index: i + j,
              isPreview: false,
            ),
          ),
        );
      }
      rows.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: diceWidgets,
        ),
      );
    }
    return rows;
  }
}
