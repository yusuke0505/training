import 'package:flutter/material.dart';
import 'package:training/components/button.dart';

class Level1 extends StatelessWidget {
  const Level1(this.buttons);
  final List<Button> buttons;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        myButton(buttons[0], context),
        myButton(buttons[1], context),
      ],
    );
  }
}
