import 'package:flutter/material.dart';

import 'level1.dart';

class Level3 extends StatefulWidget {
  const Level3();

  @override
  _Level3State createState() => _Level3State();
}

class _Level3State extends State<Level3> {
  bool isButton4Active = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        simpleButton(color: Colors.blue.shade50, text: 'ボタン1'),
        GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Yay! A SnackBar!'),
              ),
            );
          },
          child: simpleButton(color: Colors.blueGrey.shade200, text: 'ボタン2'),
        ),
        simpleButton(
            color: Colors.lightGreenAccent.shade400,
            text: 'ボタン3',
            icon: Icons.search),
        GestureDetector(
          child: simpleButton(
              color: isButton4Active ? Colors.amber.shade400 : Colors.black54,
              text: isButton4Active ? '送信' : '送信済'),
          onTap: () {
            setState(() {
              isButton4Active = !isButton4Active;
            });
          },
        ),

        //
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
