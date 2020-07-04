import 'package:flutter/material.dart';

import '../fade_in.dart';

class ThirdIntroPage extends StatefulWidget {
  @override
  _ThirdIntroPageState createState() => _ThirdIntroPageState();
}
Size size;
class _ThirdIntroPageState extends State<ThirdIntroPage> {
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        color: Color(0xffF8791D),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              width: size.width/1.5,
              height: size.height/3,
              child: FadeIn(2,Image.asset('assets/calm.png')),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                width: size.width/1.5,
                child: FadeIn(2.33, Text('타이탄들은 명상을 통해\n 자신의 내면을 가꿉니다',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,))
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                width: size.width/1.5,
                child: FadeIn(2.66, Text('"타이탄의 에너지"가\n 당신의 명상을 도와드립니다',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,))
            ),
          ],
        ),
      ),
    );
  }
}
