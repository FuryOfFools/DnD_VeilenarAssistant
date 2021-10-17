import 'package:dnd_veilenar_assistant/presentation/dice_roller_page/dice_roller_page.dart';
import 'package:dnd_veilenar_assistant/presentation/dice_roller_page/providers/dice_roller.dart';
import 'package:dnd_veilenar_assistant/presentation/home_page/home_page.dart';
import 'package:dnd_veilenar_assistant/presentation/home_page/providers/dice_roller_d20.dart';
import 'package:dnd_veilenar_assistant/presentation/veilenar/veilenar_page.dart';
import 'package:dnd_veilenar_assistant/presentation/wip_page/wip_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  runApp(DnDApp());
}

class DnDApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => ChangeNotifierProvider<D20DiceRoller>(
              create: (context) => D20DiceRoller(),
              child: HomePage(),
            ),
        '/new_character': (context) => VeilenarPage(),
        '/dices': (context) => ChangeNotifierProvider<DiceRoller>(
              create: (context) => DiceRoller(),
              child: DiceRollerPage(),
            ),
        '/connect': (context) => WIPPage(),
        '/settings': (context) => WIPPage(),
        '/error': (context) => WIPPage(),
      },
      initialRoute: '/',
    );
  }
}
