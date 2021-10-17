import 'package:dnd_veilenar_assistant/presentation/dice_roller_page/widgets/dice_box.dart';
import 'package:dnd_veilenar_assistant/presentation/dice_roller_page/widgets/dice_display.dart';
import 'package:dnd_veilenar_assistant/presentation/dice_roller_page/widgets/dice_table.dart';
import 'package:flutter/material.dart';

class DiceRollerPage extends StatelessWidget {
  const DiceRollerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _testFunctions = ValueNotifier<bool>(false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
        actions: [
          IconButton(
            onPressed: () => _testFunctions.value = !_testFunctions.value,
            icon: Icon(Icons.workspaces),
          )
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: _testFunctions,
        builder: (_, bool value, __) => ListView(
          children: [
            DiceDisplayWidget(isTestFunction: value),
            DiceBoxWidget(),
            DiceTableWidget(),
          ],
        ),
      ),
    );
  }
}
