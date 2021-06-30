import 'package:flutter/material.dart';

class Level3 extends StatelessWidget {
  const Level3();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            color: Colors.blue.shade50,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(12),
            child: Text('ボタン1'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            color: Colors.blueGrey.shade200,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(12),
            child: Text('ボタン2'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            color: Colors.lightGreenAccent.shade400,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(12),
            child: Text('ボタン3'),
          ),
        ),
      ],
    );
  }
}
