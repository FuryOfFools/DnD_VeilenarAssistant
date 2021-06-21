import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(color: Colors.blue),
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Вэйленар D&D',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.only(top: 20)),
          MenuElement(
            icon: Icons.person,
            route: '/new_chararcter',
            title: 'Новый персонаж',
          ),
          MenuElement(
            icon: Image.asset('assets/images/dices/d20_icon.jpg'),
            route: '/dices',
            title: 'Dice Roller',
          ),
          MenuElement(
            icon: Icons.people,
            route: '/connect',
            title: 'Подключиться',
          ),
          MenuElement(
            icon: Icons.settings,
            route: '/settings',
            title: 'Настройки',
          ),
        ],
      ),
    );
  }
}

class MenuElement extends StatelessWidget {
  final String title;
  final String route;
  final dynamic icon;
  const MenuElement({
    Key? key,
    required this.title,
    required this.route,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, route),
      child: Container(
        padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
        child: Row(
          children: [
            SizedBox(
              width: 25,
              child: icon is IconData ? Icon(icon, size: 25) : icon,
            ),
            Padding(padding: const EdgeInsets.only(left: 10)),
            Text(
              title,
              style: TextStyle(fontSize: 19),
            ),
          ],
        ),
      ),
    );
  }
}
