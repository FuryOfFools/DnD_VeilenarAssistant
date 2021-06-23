import 'package:dnd_veilenar_assistant/pages/character_page/providers/ruleset.dart';
import 'package:dnd_veilenar_assistant/pages/character_page/widgets/ruleset_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RuleSetSelector _ruleSet = Provider.of<RuleSetSelector>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Новый персонаж'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        //TODO реализовать кеширование персонажа на главной странице при выборе одного из вариантов правила
        child: _ruleSet.ruleSet == RuleSetType.none
            ? SelecterRulesetWidget()
            : CreateCharacterWidget(),
      ),
    );
  }
}

class CreateCharacterWidget extends StatelessWidget {
  const CreateCharacterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Создания персонажа'),
    );
  }
}

//TODO реализовать способ выбора создания персонажа с нуля или создания готового персонажа
class GenerateNewCharacterWidget extends StatelessWidget {
  const GenerateNewCharacterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Генерация персонажа'),
    );
  }
}

class SelecterRulesetWidget extends StatelessWidget {
  const SelecterRulesetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                color: ruleSetColor[RuleSetType.values[index]] ?? Colors.white,
                ruleSetType: RuleSetType.values[index],
              );
      },
    );
  }
}
