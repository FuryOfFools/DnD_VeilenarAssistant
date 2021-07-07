import 'package:dnd_veilenar_assistant/pages/character_page/data.dart';
import 'package:dnd_veilenar_assistant/pages/character_page/providers/veilenar_ruleset.dart';
import 'package:dnd_veilenar_assistant/pages/character_page/widgets/new_character_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VeilenarPage extends StatelessWidget {
  const VeilenarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<VeilenarRuleset>(
      builder: (context, ruleSet, child) {
        return ruleSet.isEmpty()
            ? NewCharacterPage(ruleSetType: RuleSetType.DnD_Veilenar)
            : Scaffold(
                appBar: AppBar(
                  title: Text('Недопилено'),
                ),
              );
      },
    );
  }
}
