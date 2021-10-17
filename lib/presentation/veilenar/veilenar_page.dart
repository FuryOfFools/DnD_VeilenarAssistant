// import 'package:dnd_veilenar_assistant/pages/character_page/data.dart';
// import 'package:dnd_veilenar_assistant/pages/character_page/widgets/new_character_widget.dart';
// import 'package:dnd_veilenar_assistant/pages/character_page/providers/veilenar_ruleset.dart';
// import 'package:provider/provider.dart';
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red[400],
                    ),
                    child: Text(
                      'Главная',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                    ),
                    child: Text(
                      'Инвентарь',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                    ),
                    child: Text(
                      'Умения',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.all(8)),
            Center(
              child: Container(
                child: Text(
                  'Базовая информация',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Раса'),
                Text('Классы и Уровни'),
                Text('Общий уровень'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Происхождение'),
                Text('Мировоззрение'),
                Text('Особенность'),
              ],
            ),
            Padding(padding: const EdgeInsets.all(8)),
            Center(
              child: Text(
                'Характеристики',
                style: TextStyle(fontSize: 17),
              ),
            ),
            Text('Кость Мастерства'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Сила'),
                Text('Ловкость'),
                Text('Выносливость'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Интеллект'),
                Text('Мудрость'),
                Text('Харизма'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Удача'),
                Text('Вдохновение'),
              ],
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
            Padding(padding: const EdgeInsets.all(8)),
            Center(
              child: Text(
                'Статы',
                style: TextStyle(fontSize: 17),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Класс Брони'),
                Text('Инициатива'),
                Text('Скорость'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Максимальное Здоровье'),
                Text('Пункты Здоровья'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Кости Здоровья'),
                Text('Испытания против Смерти'),
              ],
            ),
            Center(
              child: Text('Состояния и эффекты'),
            ),
            Padding(padding: const EdgeInsets.all(8)),
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
