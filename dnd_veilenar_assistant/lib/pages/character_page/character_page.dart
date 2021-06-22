import 'package:dnd_veilenar_assistant/app/model/ruleset.dart';
import 'package:dnd_veilenar_assistant/pages/character_page/widgets/ruleset_widget.dart';
import 'package:flutter/material.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Новый персонаж'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: RuleSetType.values.length,
          itemBuilder: (_, index) {
            return index == 0
                ? Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, bottom: 30),
                        child: Text(
                          'Выберите правила создания персонажа',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      RulesetWidget(
                        title: ruleSetTitle[RuleSetType.values[index]] ?? '',
                        color: ruleSetColor[RuleSetType.values[index]] ??
                            Colors.white,
                        ruleSetType: RuleSetType.values[index],
                        route: ruleSetRoute[RuleSetType.values[index]] ?? '',
                      ),
                    ],
                  )
                : RulesetWidget(
                    title: ruleSetTitle[RuleSetType.values[index]] ?? '',
                    color:
                        ruleSetColor[RuleSetType.values[index]] ?? Colors.white,
                    ruleSetType: RuleSetType.values[index],
                    route: ruleSetRoute[RuleSetType.values[index]] ?? '',
                  );
          },
        ),
      ),
    );
  }
}
