import 'package:dnd_veilenar_assistant/pages/character_page/data.dart';
import 'package:dnd_veilenar_assistant/pages/character_page/widgets/ruleset_widget.dart';
import 'package:flutter/material.dart';

class SelectRuleSetPage extends StatelessWidget {
  const SelectRuleSetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        appBar: AppBar(title: Text('Новый персонаж')),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.builder(
            itemCount: RuleSetType.values.length,
            itemBuilder: (_, index) {
              return index == 0
                  ? Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 30),
                      child: Text(
                        'Выберите правила создания персонажа',
                        style: TextStyle(fontSize: 25),
                      ),
                    )
                  : RulesetWidget(
                      title: ruleSetTitle[RuleSetType.values[index]] ?? '',
                      color: ruleSetColor[RuleSetType.values[index]] ??
                          Colors.white,
                      ruleSetType: RuleSetType.values[index],
                    );
            },
          ),
        ),
      ),
    );
  }
}
