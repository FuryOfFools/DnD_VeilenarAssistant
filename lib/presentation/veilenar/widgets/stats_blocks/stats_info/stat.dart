import 'package:dnd_veilenar_assistant/presentation/veilenar/widgets/text_field.dart';
import 'package:flutter/material.dart';

class StatWidget extends StatelessWidget {
  final String title;
  final bool isLuck;
  final bool isInspire;
  const StatWidget({
    Key? key,
    required this.title,
    this.isLuck = false,
    this.isInspire = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(title),
          VeilenarTextField(width: 100, isEnabled: !isInspire),
          !isLuck ? Text('0') : SizedBox(), //TODO расчет модификатора
        ],
      ),
    );
  }
}
