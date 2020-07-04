import 'package:flutter/material.dart';

import 'famous_saying/saying_page.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}


class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;
  List _pages = [
    SayingPage(),
    Text('page2'),
    Text('page3'),
    Text('page4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xffFD9850),
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.white,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.healing), title: Text('명언')),
            BottomNavigationBarItem(
                icon: Icon(Icons.spa), title: Text('명상')),
            BottomNavigationBarItem(
                icon: Icon(Icons.book), title: Text('다이어리')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text('계정')),
          ]),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
