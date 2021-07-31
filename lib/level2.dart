import 'package:flutter/material.dart';

enum Button { type1, type2, type3 }

extension ButtonExt on Button {
  Widget? get rightIcon {
    if (this == Button.type3) {
      return Icon(
        Icons.search,
        size: 16,
      );
    } else {
      return null;
    }
  }

  void onTap(BuildContext context) {
    if (this == Button.type2) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Yay! A SnackBar!'),
        ),
      );
    } else {
      return;
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
    }
  }

  EdgeInsets get padding {
    return const EdgeInsets.all(12);
  }

  Alignment get alignment {
    return Alignment.center;
  }
}

class Level2 extends StatelessWidget {
  const Level2();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        for (final btn in Button.values)
          Padding(
            padding: const EdgeInsets.all(20),
            child: _buildButton(btn, context),
          ),
      ],
    );
  }

  Widget _buildButton(Button button, BuildContext context) {
    return GestureDetector(
      onTap: () {
        button.onTap(context);
      },
      child: _buildButtonCointainer(button),
    );
  }

  Widget _buildButtonCointainer(Button button) {
    return Container(
      color: button.color,
      alignment: button.alignment,
      padding: button.padding,
      child: Row(
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
            child: button.rightIcon,
          ),
        ],
      ),
    );
  }
}
