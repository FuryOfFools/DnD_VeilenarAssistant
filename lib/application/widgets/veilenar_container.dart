import 'package:flutter/material.dart';

class VeilenarContainer extends StatelessWidget {
  final Widget child;
  final String title;
  final double titleSize;
  const VeilenarContainer({
    Key? key,
    required this.title,
    required this.child,
    this.titleSize = 20,
  }) : super(key: key);

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
              title,
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: titleSize,
                letterSpacing: 1,
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
