import 'package:dnd_veilenar_assistant/presentation/veilenar/widgets/stats_blocks/base_info/base_info.dart';
import 'package:dnd_veilenar_assistant/presentation/veilenar/widgets/stats_blocks/character_info/character_info.dart';
import 'package:dnd_veilenar_assistant/presentation/veilenar/widgets/stats_blocks/stats_info/stats_info.dart';
import 'package:dnd_veilenar_assistant/presentation/veilenar/widgets/tabs.dart';
import 'package:flutter/material.dart';

class VeilenarPage extends StatelessWidget {
  const VeilenarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Имя персонажа'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TabsWidget(),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 8,
                right: 8,
              ),
              child: BaseInfo(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 8,
                right: 8,
              ),
              child: StatsInfo(),
            ),
            Padding(padding: const EdgeInsets.all(8)),
            Center(
              child: Text(
                'Ремесленные навыки',
                style: TextStyle(fontSize: 17),
              ),
            ),
            Center(
              child: Text('Лень писать потом...'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 8,
                right: 8,
              ),
              child: CharacterInfo(),
            ),
            Center(
              child: Text(
                'Атаки и Способности',
                style: TextStyle(fontSize: 17),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Название'),
                Text('Бонус/Слож'),
                Text('Урон/Тип/Дальность'),
              ],
            ),
            Center(
              child: Text('Особенности'),
            ),
            Center(
              child: Text('Поле для доп инфы о том о сем'),
            ),
          ],
        ),
      ),
    );
  }
}
