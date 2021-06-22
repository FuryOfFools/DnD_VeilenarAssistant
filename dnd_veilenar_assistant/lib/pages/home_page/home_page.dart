import 'package:dnd_veilenar_assistant/app/model/d20_dice_roller.dart';
import 'package:dnd_veilenar_assistant/pages/home_page/widgets/dice_roller.dart';
import 'package:dnd_veilenar_assistant/pages/home_page/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: DrawerWidget(),
      ),
      appBar: AppBar(
        title: Text('D&D Ассистент'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            ChangeNotifierProvider<D20DiceRoller>(
              create: (context) => D20DiceRoller(),
              child: DiceRollerWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
