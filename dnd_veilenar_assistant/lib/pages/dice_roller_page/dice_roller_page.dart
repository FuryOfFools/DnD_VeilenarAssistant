import 'package:dnd_veilenar_assistant/pages/dice_roller_page/widgets/dice_box.dart';
import 'package:dnd_veilenar_assistant/pages/dice_roller_page/widgets/dice_display.dart';
import 'package:dnd_veilenar_assistant/pages/dice_roller_page/widgets/dice_table.dart';
import 'package:flutter/material.dart';

class DiceRollerPage extends StatelessWidget {
  const DiceRollerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dice Roller')),
      body: ListView(
        children: [
          DiceDisplayWidget(),
          DiceBoxWidget(),
          DiceTableWidget(),
        ],
      ),
    );
  }
}
