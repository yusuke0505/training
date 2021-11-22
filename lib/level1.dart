import 'package:flutter/material.dart';

enum Btn { btn1, btn2, btn3 }

extension BtnExtension on Btn {
  String get label {
    switch (this) {
      case Btn.btn1:
        return 'ボタン1';
      case Btn.btn2:
        return 'ボタン2';
      case Btn.btn3:
        return 'ボタン3';
    }
  }

  Color get color {
    switch (this) {
      case Btn.btn1:
        return Colors.blue.shade50;
      case Btn.btn2:
        return Colors.blueGrey.shade200;
      case Btn.btn3:
        return Colors.pink;
    }
  }
}

class Level1 extends StatelessWidget {
  const Level1();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // (context, index)を省略してる書き方
      itemBuilder: (_, index) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: _simpleButton(Btn.values[index]),
        );
      },
      itemCount: Btn.values.length,
    );

    //  for-in文を使った書き方（ ↑ のListView.builderのとこと同じ）
    return ListView(
      children: [
        for (final btn in Btn.values)
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: _simpleButton(btn),
          ),
      ],
    );
  }

  Widget _simpleButton(Btn btnType) {
    return Container(
      color: btnType.color,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(12),
      child: Text(btnType.label),
    );
  }
}
