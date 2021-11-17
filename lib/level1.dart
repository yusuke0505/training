import 'package:flutter/material.dart';

class Level1 extends StatelessWidget {
  const Level1();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Button.values.length,
        itemBuilder: (_, int index) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Level1Button(Button.values[index]),
          );
        });
  }
}

class Level1Button extends StatelessWidget {
  const Level1Button(this.button);

  final Button button;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: button.color,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(12),
      child: Text(button.label),
    );
  }
}

enum Button { type1, type2 }

extension ButtonExtension on Button {
  Color get color {
    switch (this) {
      case Button.type1:
        return Colors.blue.shade50;
      case Button.type2:
        return Colors.blueGrey.shade200;
    }
  }

  String get label {
    switch (this) {
      case Button.type1:
        return 'ボタン1';
      case Button.type2:
        return 'ボタン2';
    }
  }
}
