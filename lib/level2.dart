import 'package:flutter/material.dart';

class Level2 extends StatelessWidget {
  const Level2();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            color: Colors.blue.shade50,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(12),
            child: Text('ボタン1'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Yay! A SnackBar!'),
                ),
              );
            },
            child: Container(
              color: Colors.blueGrey.shade200,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(12),
              child: Text('ボタン2'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            color: Colors.lightGreenAccent.shade400,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 16,
                  height: 16,
                ),
                Text('ボタン3'),
                SizedBox(
                  width: 16,
                  height: 16,
                  child: Icon(
                    Icons.search,
                    size: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
