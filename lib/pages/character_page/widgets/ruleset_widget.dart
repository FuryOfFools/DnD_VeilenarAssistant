import 'package:dnd_veilenar_assistant/pages/character_page/data.dart';
import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: InkWell(
        onTap: () =>
            Navigator.pushNamed(context, ruleSetRoute[ruleSetType] ?? '/error'),
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
