import 'package:flutter/material.dart';

class Level1 extends StatelessWidget {
  const Level1();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        simpleButton(color: Colors.blue.shade50, text: 'ボタン1'),
        simpleButton(color: Colors.blueGrey.shade200, text: 'ボタン2'),
      ],
    );
  }
}

Widget simpleButton(
    {required Color color, required String text, IconData? icon}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      color: color,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 16,
            height: 16,
          ),
          Text(text),
          SizedBox(
            width: 16,
            height: 16,
            child: Icon(
              icon,
              size: 16,
            ),
          ),
        ],
      ),
    ),
  );
}
