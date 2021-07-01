import 'package:flutter/material.dart';

class Level1 extends StatelessWidget {
  const Level1();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Level1Button(
          margin: EdgeInsets.all(20),
          color: Colors.blue.shade50,
          alignment: Alignment.center,
          padding: EdgeInsets.all(12),
          text: 'ボタン1',
        ),
        Level1Button(
          margin: EdgeInsets.all(20),
          color: Colors.blueGrey.shade200,
          alignment: Alignment.center,
          padding: EdgeInsets.all(12),
          text: 'ボタン2',
        ),
      ],
    );
  }
}

class Level1Button extends StatelessWidget {
  const Level1Button({
    required this.margin,
    required this.color,
    required this.alignment,
    required this.text,
    required this.padding,
  });

  final EdgeInsets margin;
  final Color color;
  final Alignment alignment;
  final EdgeInsets padding;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Container(
        color: color,
        alignment: alignment,
        padding: padding,
        child: Text(text),
      ),
    );
  }
}
