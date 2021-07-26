import 'package:flutter/material.dart';

class Level3 extends StatelessWidget {
  const Level3(this.buttons);
  final List<Button> buttons;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20),
          child: myButton(buttons[0], context),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: myButton(buttons[1], context),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: myButton(buttons[2], context),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: TapButton(buttons[3]),
        ),
      ],
    );
  }
}

enum Button { type1, type2, type3, type4 }

extension ButtonExt on Button {
  bool get haveRow {
    if (this == Button.type3) {
      return true;
    } else {
      return false;
    }
  }

  bool get isGesture {
    if (this == Button.type2) {
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
        return Colors.lightGreenAccent.shade400;
      case Button.type4:
        return Colors.amber.shade400;
    }
  }

  String get label {
    switch (this) {
      case Button.type1:
        return 'ボタン1';
      case Button.type2:
        return 'ボタン2';
      case Button.type3:
        return 'ボタン3';
      case Button.type4:
        return '送信';
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

class TapButton extends StatefulWidget {
  const TapButton(
    this.button,
  );
  final Button button;

  @override
  _TapButtonState createState() => _TapButtonState();
}

class _TapButtonState extends State<TapButton> {
  bool _isActive = true;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isActive = !_isActive;
        });
        print("hello");
      },
      child: Container(
        color: _isActive ? widget.button.color : Colors.black54,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(12),
        child: Text(
          _isActive ? widget.button.label : '送信済',
          style: TextStyle(
            color: _isActive ? null : Colors.white,
          ),
        ),
      ),
    );
  }
}
