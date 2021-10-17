import 'package:flutter/material.dart';

class InfoBlock extends StatelessWidget {
  final Widget child;
  final String title;
  const InfoBlock({Key? key, required this.child, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        child,
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(title),
        )
      ],
    );
  }
}
