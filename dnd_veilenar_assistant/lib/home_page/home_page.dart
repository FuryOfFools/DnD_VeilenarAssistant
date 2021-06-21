import 'package:dnd_veilenar_assistant/home_page/widgets/dice_roller.dart';
import 'package:dnd_veilenar_assistant/model/home_page_dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VeilenarHomePage extends StatelessWidget {
  const VeilenarHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: null,
        ),
        title: Text('D&D Ассистент'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            ChangeNotifierProvider<DiceRoller>(
              create: (context) => DiceRoller(),
              child: DiceRollerWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
