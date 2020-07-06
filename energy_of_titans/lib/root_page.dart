import 'package:energy_of_titans/contents/tab_page.dart';
import 'package:flutter/material.dart';
import 'intro/explain_page.dart';
import 'login_page.dart';

class RootPage extends StatelessWidget {
  bool _loginState = true;
  @override
  Widget build(BuildContext context) {
    if(_loginState)
      return TabPage();
    else
      return ExplainPage();
  }
}



