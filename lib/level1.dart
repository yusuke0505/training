import 'package:flutter/material.dart';

class Level1 extends StatelessWidget {
  const Level1();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        simpleButton(Colors.blue.shade50, 'ボタン1'),
        simpleButton(Colors.blueGrey.shade200, 'ボタン2'),
      ],
    );
  }

  Widget simpleButton(Color color, String text) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        color: color,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(12),
        child: Text(text),
      ),
    );
  }
}
