import 'package:flutter/material.dart';

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

  static const List<Widget> _widgetOptions = <Widget>[
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
      appBar: AppBar(
        title: const Text('トレーニング'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
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

class Level1 extends StatelessWidget {
  const Level1();

  @override
  Widget build(BuildContext context) {
    return Text(
      'レベル1',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}

class Level2 extends StatelessWidget {
  const Level2();

  @override
  Widget build(BuildContext context) {
    return Text(
      'レベル2',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}

class Level3 extends StatelessWidget {
  const Level3();

  @override
  Widget build(BuildContext context) {
    return Text(
      'レベル3',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
