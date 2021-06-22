import 'package:dnd_veilenar_assistant/app/model/ruleset.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RulesetWidget extends StatelessWidget {
  final String title;
  final Color color;
  final RuleSetType ruleSetType;
  const RulesetWidget({
    Key? key,
    required this.title,
    required this.color,
    required this.ruleSetType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ruleSet = Provider.of<RuleSetSelector>(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: InkWell(
        onTap: () {
          ruleSet.ruleSet = ruleSetType;
        },
        child: Container(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          decoration: BoxDecoration(
            border: Border.all(color: color, width: 1.5),
            borderRadius: BorderRadius.circular(15),
            color: color.withOpacity(0.15),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
