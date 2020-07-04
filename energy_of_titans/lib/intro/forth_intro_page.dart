import 'package:flutter/material.dart';

import '../fade_in.dart';

class ForthIntroPage extends StatefulWidget {
  @override
  _ForthIntroPageState createState() => _ForthIntroPageState();
}
Size size;
class _ForthIntroPageState extends State<ForthIntroPage> {
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        color: Color(0xffFE6916),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              width: size.width/1.5,
              height: size.height/3,
              child: FadeIn(2,Image.asset('assets/book.png')),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                width: size.width/1.5,
                child: FadeIn(2.33, Text('하루의 시작과 끝이 행복하다면\n 우리의 인생이 어떻게 바뀔까요?',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,))
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                width: size.width/1.5,
                child: FadeIn(2.66, Text('"타이탄의 에너지"에서\n감사일기를 작성해보세요',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,))
            ),
          ],
        ),
      ),
    );
  }
}
