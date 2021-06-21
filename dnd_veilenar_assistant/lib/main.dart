import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(VeilenarApp());
}

class VeilenarApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => VeilenarHomePage(),
      },
      initialRoute: '/',
    );
  }
}

class VeilenarHomePage extends StatelessWidget {
  const VeilenarHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: null,
        ),
        title: Text('D&D Ассистент'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            DiceRollerWidget(),
          ],
        ),
      ),
    );
  }
}

class DiceRollerWidget extends StatefulWidget {
  const DiceRollerWidget({Key? key}) : super(key: key);

  @override
  _DiceRollerWidgetState createState() => _DiceRollerWidgetState();
}

class _DiceRollerWidgetState extends State<DiceRollerWidget> {
  int d20 = 20;
  Color _rollInProgressColor = Colors.pinkAccent;
  Color _rollDoneColor = Colors.greenAccent;
  bool _isDone = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.blueGrey,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(2, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              'Dice Roller',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 25,
                letterSpacing: 1,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _isDone = false;
              });
              for (int i = 0; i < 20; i++)
                Future.delayed(
                  Duration(milliseconds: i * (i * 7)),
                  () => setState(() => d20 = Random().nextInt(19) + 1),
                ).then(
                  (value) => i == 19
                      ? setState(() {
                          _isDone = true;
                        })
                      : null,
                );
            },
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: _isDone ? _rollDoneColor : _rollInProgressColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/dices/d20.svg',
                  ),
                  Text(
                    d20.toString(),
                    style: TextStyle(fontSize: 38, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              'Click on dice to roll!!!',
              style: TextStyle(
                fontSize: 17,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
