import 'package:flutter/material.dart';

class Level1 extends StatelessWidget {
  const Level1();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        for (final btn in Button.values)
          Padding(
            padding: const EdgeInsets.all(20),
            child: myButton(btn),
          ),
      ],
    );
  }
}

enum Button { type1, type2 }

extension ButtonExt on Button {
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

  EdgeInsets get padding {
    return const EdgeInsets.all(12);
  }

  Alignment get alignment {
    return Alignment.center;
  }
}

Widget myButton(Button button) {
  return Container(
    color: button.color,
    alignment: button.alignment,
    padding: button.padding,
    child: Text(button.label),
  );
}
