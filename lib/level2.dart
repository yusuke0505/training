import 'package:flutter/material.dart';
import 'package:training/components/button.dart';

class Level2 extends StatelessWidget {
  const Level2(this.buttons);
  final List<Button> buttons;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        myButton(buttons[2], context),
        myButton(buttons[3], context),
        myButton(buttons[4], context),
      ],
    );
  }
}
