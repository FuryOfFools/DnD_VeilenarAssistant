import 'package:dnd_veilenar_assistant/application/widgets/veilenar_container.dart';
import 'package:dnd_veilenar_assistant/presentation/veilenar/widgets/stats_blocks/base_info/info_block.dart';
import 'package:dnd_veilenar_assistant/presentation/veilenar/widgets/text_field.dart';
import 'package:flutter/material.dart';

class BaseInfo extends StatelessWidget {
  const BaseInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VeilenarContainer(
      title: 'Базовая Информация',
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoBlock(
                  child: VeilenarTextField(
                    width: 80,
                  ),
                  title: 'Раса',
                ),
                InfoBlock(
                  child: VeilenarTextField(
                    width: 180,
                  ),
                  title: 'Классы и Уровни',
                ),
                InfoBlock(
                  child: VeilenarTextField(
                    width: 65,
                  ),
                  title: 'Уровень',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoBlock(
                  child: VeilenarTextField(
                    width: 110,
                  ),
                  title: 'Происхождение',
                ),
                InfoBlock(
                  child: VeilenarTextField(
                    width: 120,
                  ),
                  title: 'Мировоззрение',
                ),
                InfoBlock(
                  child: VeilenarTextField(
                    width: 100,
                  ),
                  title: 'Особенность',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
