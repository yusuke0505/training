import 'package:flutter/material.dart';
import 'level1.dart';

class Level2 extends StatelessWidget {
  const Level2();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        simpleButton(color: Colors.blue.shade50, text: 'ボタン1'),
        GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Yay! A SnackBar!'),
              ),
            );
          },
          child: simpleButton(color: Colors.blueGrey.shade200, text: 'ボタン2'),
        ),
        simpleButton(
            color: Colors.lightGreenAccent.shade400,
            text: 'ボタン3',
            icon: Icons.search),
      ],
    );
  }
}
