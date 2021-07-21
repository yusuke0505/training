import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Button { type1, type2, type3, type4, type5 }

extension ButtonExt on Button {
  bool get haveRow {
    if (this == Button.type5) {
      return true;
    } else {
      return false;
    }
  }

  bool get isGesture {
    if (this == Button.type4) {
      return true;
    } else {
      return false;
    }
  }

  Color get color {
    switch (this) {
      case Button.type1:
        return Colors.blue.shade50;
      case Button.type2:
        return Colors.blueGrey.shade200;
      case Button.type3:
        return Colors.blue.shade50;
      case Button.type4:
        return Colors.blueGrey.shade200;
      case Button.type5:
        return Colors.lightGreenAccent.shade400;
    }
  }

  String get label {
    switch (this) {
      case Button.type1:
        return 'ボタン1';
      case Button.type2:
        return 'ボタン2';
      case Button.type3:
        return 'ボタン1';
      case Button.type4:
        return 'ボタン2';
      case Button.type5:
        return 'ボタン3';
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
    child: (() {
      if (button.isGesture) {
        return GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Yay! A SnackBar!'),
              ),
            );
          },
          child: buttonCointainer(button),
        );
      } else {
        return buttonCointainer(button);
      }
    }()),
  );
}

Widget buttonCointainer(Button button) {
  return Container(
    color: button.color,
    alignment: button.alignment,
    padding: button.innerpadding,
    child: (() {
      if (button.haveRow) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 16,
              height: 16,
            ),
            Text(button.label),
            SizedBox(
              width: 16,
              height: 16,
              child: Icon(
                Icons.search,
                size: 16,
              ),
            ),
          ],
        );
      } else {
        return Text(button.label);
      }
    }()),
  );
}
