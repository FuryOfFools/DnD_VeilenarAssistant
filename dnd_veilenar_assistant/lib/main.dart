import 'package:dnd_veilenar_assistant/home_page/home_page.dart';
import 'package:flutter/material.dart';

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
