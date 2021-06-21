import 'package:flutter/material.dart';

void main() {
  runApp(VeilenarApp());
}

class VeilenarApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    return Container();
  }
}
