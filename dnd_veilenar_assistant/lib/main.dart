import 'package:dnd_veilenar_assistant/app/model/ruleset.dart';
import 'package:dnd_veilenar_assistant/app/model/rulesets/phb_ruleset.dart';
import 'package:dnd_veilenar_assistant/app/model/rulesets/veilenar_ruleset.dart';
import 'package:dnd_veilenar_assistant/pages/character_page/character_page.dart';
import 'package:dnd_veilenar_assistant/pages/home_page/home_page.dart';
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
        '/': (context) => HomePage(),
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
        '/dices': (context) => WIPPage(),
        '/connect': (context) => WIPPage(),
        '/settings': (context) => WIPPage(),
      },
      initialRoute: '/',
    );
  }
}
