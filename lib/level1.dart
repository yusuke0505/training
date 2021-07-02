import 'package:flutter/material.dart';

class Level1 extends StatelessWidget {
  const Level1();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Level1Button(
            color: Value.BlueShade50.color,
            text: Value.Label1.label,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Level1Button(
            color: Value.BlueGreyShade200.color,
            text: Value.Label2.label,
          ),
        ),
      ],
    );
  }
}

class Level1Button extends StatelessWidget {
  const Level1Button({
    required this.color,
    required this.text,
  });

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(12),
      child: Text(text),
    );
  }
}

enum Value {
  BlueShade50,
  BlueGreyShade200,
  Label1,
  Label2,
}

extension ValueExtension on Value {
  static final colors = {
    Value.BlueShade50: Colors.blue.shade50,
    Value.BlueGreyShade200: Colors.blueGrey.shade200,
  };

  static final labels = {
    Value.Label1: 'ボタン1',
    Value.Label2: 'ボタン2',
  };

  Color get color => colors[this] ?? Colors.black;
  String get label => labels[this] ?? '情報が不正です';
}
