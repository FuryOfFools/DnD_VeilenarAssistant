import 'package:dnd_veilenar_assistant/app/model/ruleset.dart';
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
        '/new_character': (context) => ChangeNotifierProvider<RuleSet>(
              create: (context) => RuleSet(),
              child: CharacterPage(),
            ),
        '/phb_character': (context) => WIPPage(),
        '/veilenar_character': (context) => WIPPage(),
        '/sw_character': (context) => WIPPage(),
        '/connect': (context) => WIPPage(),
        '/settings': (context) => WIPPage(),
        '/dices': (context) => WIPPage(),
      },
      initialRoute: '/',
    );
  }
}
