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
            color: ColorEnum.BlueShade50,
            text: ButtonTextEnum.Button1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Level1Button(
            color: ColorEnum.BlueGreyShade200,
            text: ButtonTextEnum.Button2,
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

  final ColorEnum color;
  final ButtonTextEnum text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color.value,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(12),
      child: Text(text.value),
    );
  }
}

enum ColorEnum {
  BlueShade50,
  BlueGreyShade200,
}

extension ColorEnumExtension on ColorEnum {
  static final values = {
    ColorEnum.BlueShade50: Colors.blue.shade50,
    ColorEnum.BlueGreyShade200: Colors.blueGrey.shade200,
  };

  Color get value => values[this] ?? Colors.black;
}

enum ButtonTextEnum {
  Button1,
  Button2,
}

extension ButtonTextEnumExtension on ButtonTextEnum {
  static final values = {
    ButtonTextEnum.Button1: 'ボタン1',
    ButtonTextEnum.Button2: 'ボタン2',
  };

  String get value => values[this] ?? 'テキスト情報がありません';
}
