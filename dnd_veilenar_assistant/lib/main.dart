import 'package:dnd_veilenar_assistant/pages/character_page/character_page.dart';
import 'package:dnd_veilenar_assistant/pages/character_page/providers/ruleset.dart';
import 'package:dnd_veilenar_assistant/pages/character_page/providers/rulesets/phb_ruleset.dart';
import 'package:dnd_veilenar_assistant/pages/character_page/providers/rulesets/veilenar_ruleset.dart';
import 'package:dnd_veilenar_assistant/pages/dice_roller_page/dice_roller_page.dart';
import 'package:dnd_veilenar_assistant/pages/dice_roller_page/providers/dice_roller.dart';
import 'package:dnd_veilenar_assistant/pages/home_page/home_page.dart';
import 'package:dnd_veilenar_assistant/pages/home_page/providers/dice_roller_d20.dart';
import 'package:dnd_veilenar_assistant/pages/wip_page/wip_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(VeilenarApp());
}

class VeilenarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => ChangeNotifierProvider<D20DiceRoller>(
              create: (context) => D20DiceRoller(),
              child: HomePage(),
            ),
        '/new_character': (context) => MultiProvider(
              providers: [
                ChangeNotifierProvider<RuleSetSelector>(
                  create: (context) => RuleSetSelector(),
                ),
                ChangeNotifierProvider<PhBRuleset>(
                  create: (context) => PhBRuleset(),
                ),
                ChangeNotifierProvider<VeilenarRuleset>(
                  create: (context) => VeilenarRuleset(),
                ),
              ],
              child: CharacterPage(),
            ),
        '/dices': (context) => ChangeNotifierProvider<DiceRoller>(
              create: (context) => DiceRoller(),
              child: DiceRollerPage(),
            ),
        '/connect': (context) => WIPPage(),
        '/settings': (context) => WIPPage(),
      },
      initialRoute: '/',
    );
  }
}
