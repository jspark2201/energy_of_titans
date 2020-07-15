import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:energy_of_titans/contents/diary/diary_page.dart';
import 'package:flutter/material.dart';

import 'account/account_page.dart';
import 'famous_saying/saying_page.dart';
import 'meditation/meditation_page.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _page = 0;
  GlobalKey _bottomNavigatorKey = GlobalKey();

  List _pages = [
    SayingPage(),
    MeditationPage(),
    DiaryPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_page],
      ),
      bottomNavigationBar: _curvedNavigation(),
    );
  }

  PageView _contents() {
    return PageView.builder(
      itemBuilder: (context, index) {
        return Center(
          child: _pages[_page],
        );
      },
      itemCount: _pages.length,
    );
  }

  CurvedNavigationBar _curvedNavigation() {

    return CurvedNavigationBar(
      color: Colors.orange,
      backgroundColor: Colors.white,
      buttonBackgroundColor: Colors.orange,
      animationCurve: Curves.easeInOut,

      key: _bottomNavigatorKey,
      items: <Widget>[
        Icon(Icons.change_history, size: 30, color: Colors.white),
        Icon(Icons.spa, size: 30, color:Colors.white),
        Icon(Icons.book, size: 30, color: Colors.white),
        Icon(Icons.account_circle, size: 30, color: Colors.white),
      ],

      onTap: (index) {
          setState(() {
            _page = index;
          });
      },
    );
  }
}
