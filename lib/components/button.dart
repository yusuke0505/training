import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  EdgeInsets get outerpadding {
    return const EdgeInsets.all(20);
  }

  EdgeInsets get innerpadding {
    return const EdgeInsets.all(12);
  }

  Alignment get alignment {
    return Alignment.center;
  }
}

Widget myButton(Button button, BuildContext context) {
  return Padding(
    padding: button.outerpadding,
    child: buttonCointainer(button),
  );
}

Widget buttonCointainer(Button button) {
  return Container(
    color: button.color,
    alignment: button.alignment,
    padding: button.innerpadding,
    child: Text(button.label),
  );
}
