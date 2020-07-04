import 'package:flutter/material.dart';

import '../fade_in.dart';

class SecondIntroPage extends StatefulWidget {
  @override
  _SecondIntroPageState createState() => _SecondIntroPageState();
}
Size size;
class _SecondIntroPageState extends State<SecondIntroPage> {
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        color: Color(0xffFD8B39),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              width: size.width/1.5,
              height: size.height/3,
              child: FadeIn(2,Image.asset('assets/handshake.png')),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                width: size.width/1.5,
                child: FadeIn(2.33, Text('타이탄들이 건네는 손길을 잡아보세요',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,))
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                width: size.width/1.5,
                child: FadeIn(2.66, Text('"타이탄의 에너지"가 당신에게\n 매일 힘이 되는 명언을 제공합니다',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,))
            ),
          ],
        ),
      ),
    );
  }
}
