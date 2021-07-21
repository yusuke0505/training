import 'package:flutter/material.dart';
import 'package:training/components/button.dart';

class Level3 extends StatelessWidget {
  const Level3(this.buttons);
  final List<Button> buttons;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        myButton(buttons[0], context),
        myButton(buttons[1], context),
        myButton(buttons[2], context),
        TapButton(buttons[3]),
        // Padding(
        //   padding: const EdgeInsets.all(20),
        //   child: GestureDetector(
        //     onTap: () {
        //       setState(() {
        //         isButton4Active = !isButton4Active;
        //       });
        //     },
        //     child: Container(
        //       color: isButton4Active ? Colors.amber.shade400 : Colors.black54,
        //       alignment: Alignment.center,
        //       padding: const EdgeInsets.all(12),
        //       child: Text(
        //         isButton4Active ? '送信' : '送信済',
        //         style: TextStyle(
        //           color: isButton4Active ? null : Colors.white,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
