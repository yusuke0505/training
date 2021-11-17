import 'package:flutter/material.dart';

import 'level1.dart';
import 'level2.dart';
import 'level3.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  static List<AppBar> _headers = <AppBar>[
    AppBar(
      title: const Text('レベル1'),
    ),
    AppBar(
      title: const Text('レベル2'),
    ),
    AppBar(
      title: const Text('レベル3'),
    ),
  ];

  static const List<Widget> _bodies = <Widget>[
    Level1(),
    Level2(),
    Level3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: _headers.elementAt(_selectedIndex),
      body: _bodies.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox.shrink(),
            label: 'レベル1',
          ),
          BottomNavigationBarItem(
            icon: SizedBox.shrink(),
            label: 'レベル2',
          ),
          BottomNavigationBarItem(
            icon: SizedBox.shrink(),
            label: 'レベル3',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
