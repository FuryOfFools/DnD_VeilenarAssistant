import 'package:dnd_veilenar_assistant/application/widgets/veilenar_container.dart';
import 'package:dnd_veilenar_assistant/presentation/veilenar/widgets/stats_blocks/base_info/info_block.dart';
import 'package:dnd_veilenar_assistant/presentation/veilenar/widgets/text_field.dart';
import 'package:flutter/material.dart';

class CharacterInfo extends StatelessWidget {
  const CharacterInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VeilenarContainer(
      title: 'Статы',
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InfoBlock(
                  child: VeilenarTextField(
                    width: 60,
                  ),
                  title: 'КБ',
                ),
                InfoBlock(
                  child: VeilenarTextField(
                    width: 60,
                  ),
                  title: 'Инициатива',
                ),
                InfoBlock(
                  child: VeilenarTextField(
                    width: 60,
                  ),
                  title: 'Скорость',
                ),
                InfoBlock(
                  child: VeilenarTextField(
                    width: 60,
                  ),
                  title: 'Макс. ПЗ',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Пункты Здоровья'),
                Text('Кости Здоровья'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Испытание против смерти'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Состояния и эффекты'),
          ),
        ],
      ),
    );
  }
}
