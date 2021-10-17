import 'package:dnd_veilenar_assistant/application/widgets/veilenar_container.dart';
import 'package:dnd_veilenar_assistant/presentation/veilenar/widgets/stats_blocks/stats_info/stat.dart';
import 'package:flutter/material.dart';

class StatsInfo extends StatelessWidget {
  const StatsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VeilenarContainer(
      title: 'Характеристики',
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(
              child: Text('Кость Мастерства'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StatWidget(title: 'Сила'),
                StatWidget(title: 'Ловкость'),
                StatWidget(title: 'Выносливость'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StatWidget(title: 'Интеллект'),
                StatWidget(title: 'Мудрость'),
                StatWidget(title: 'Харизма'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                StatWidget(
                  title: 'Удача',
                  isLuck: true,
                ),
                StatWidget(
                  title: 'Вдохновение',
                  isLuck: true,
                  isInspire: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
