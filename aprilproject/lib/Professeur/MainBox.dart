import 'package:flutter/material.dart';

class MainBox extends StatelessWidget {
  Color color;
  Widget child;

  MainBox({super.key, required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      // width: 800,
      color: color,
      alignment: Alignment.center,
    );
  }
}
