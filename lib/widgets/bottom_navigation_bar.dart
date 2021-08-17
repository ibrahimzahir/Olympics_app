import 'package:flutter/material.dart';

class BottomNavigationBarOlympic extends StatefulWidget {
  const BottomNavigationBarOlympic({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarOlympicState createState() =>
      _BottomNavigationBarOlympicState();
}

class _BottomNavigationBarOlympicState
    extends State<BottomNavigationBarOlympic> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Icon(Icons.home_rounded),
    Icon(Icons.calendar_today_rounded),
    Icon(Icons.celebration_outlined),
    Icon(Icons.feed_rounded),
    Icon(Icons.more_rounded),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_rounded,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.calendar_today_rounded,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.celebration_outlined,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.feed_rounded,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.more_rounded,
          ),
          label: '',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
