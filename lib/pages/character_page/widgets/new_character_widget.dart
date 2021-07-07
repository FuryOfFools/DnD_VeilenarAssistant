import 'package:dnd_veilenar_assistant/pages/character_page/data.dart';
import 'package:dnd_veilenar_assistant/pages/character_page/providers/phb_ruleset.dart';
import 'package:dnd_veilenar_assistant/pages/character_page/providers/veilenar_ruleset.dart';
import 'package:dnd_veilenar_assistant/pages/character_page/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewCharacterPage extends StatefulWidget {
  final RuleSetType ruleSetType;
  NewCharacterPage({
    Key? key,
    required this.ruleSetType,
  }) : super(key: key);

  @override
  _NewCharacterState createState() => _NewCharacterState();
}

class _NewCharacterState extends State<NewCharacterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController raceNameController = TextEditingController();
  final TextEditingController allignmentController = TextEditingController();
  final TextEditingController originController = TextEditingController();
  final TextEditingController xpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ruleSetTitle[widget.ruleSetType] ?? ''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Text(
              'Укажите базовую информацию о персонаже:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                'Не обязательно заполнять все поля',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
            TextFieldWidget(
              controller: nameController,
              hintText: 'Имя',
            ),
            TextFieldWidget(
              controller: raceNameController,
              hintText: 'Раса',
            ),
            TextFieldWidget(
              controller: allignmentController,
              hintText: 'Мировоззрение',
            ),
            TextFieldWidget(
              controller: originController,
              hintText: 'Происхождение',
            ),
            TextFieldWidget(
              controller: xpController,
              hintText: 'Опыт (только цифры)',
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40, top: 20, left: 40),
              child: Center(
                child: widget.ruleSetType == RuleSetType.DnD_PhB
                    ? Consumer<PhBRuleset>(
                        builder: (context, ruleSet, child) => InkWell(
                          onTap: () {
                            ruleSet.name = nameController.text;
                            ruleSet.raceName = raceNameController.text;
                            ruleSet.allignment = allignmentController.text;
                            ruleSet.origin = originController.text;
                            ruleSet.xp = int.parse(xpController.text);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 40,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Создать персонажа!',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                        ),
                      )
                    : Consumer<VeilenarRuleset>(
                        builder: (context, ruleSet, child) => InkWell(
                          onTap: () {
                            ruleSet.name = nameController.text;
                            ruleSet.raceName = raceNameController.text;
                            ruleSet.allignment = allignmentController.text;
                            ruleSet.origin = originController.text;
                            ruleSet.xp = int.parse(xpController.text);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 40,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Создать персонажа!',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
