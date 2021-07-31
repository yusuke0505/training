import 'package:flutter/material.dart';

enum Button { type1, type2, type3, type4 }

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

  EdgeInsets get padding {
    return const EdgeInsets.all(12);
  }

  Alignment get alignment {
    return Alignment.center;
  }
}

class Level3 extends StatelessWidget {
  const Level3();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        for (int i = 0; i < 3; i++)
          Padding(
            padding: const EdgeInsets.all(20),
            child: _buildMyButton(Button.values[i], context),
          ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: TapButton(Button.values[3]),
        ),
      ],
    );
  }

  Widget _buildMyButton(Button button, BuildContext context) {
    return GestureDetector(
      onTap: () {
        button.onTap(context);
      },
      child: _buildbuttonCointainer(button),
    );
  }

  Widget _buildbuttonCointainer(Button button) {
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

class TapButton extends StatefulWidget {
  const TapButton(this.button);
  final Button button;

  @override
  _TapButtonState createState() => _TapButtonState();
}

class _TapButtonState extends State<TapButton> {
  bool _isActive = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isActive = !_isActive;
        });
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
