import 'package:flutter/material.dart';
import 'root_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'GmarketSans-M',
        primarySwatch: Colors.orange,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RootPage(),
    );
  }
}

