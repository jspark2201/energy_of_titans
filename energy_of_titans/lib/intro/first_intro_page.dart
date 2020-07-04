import 'package:energy_of_titans/fade_in.dart';
import 'package:flutter/material.dart';

class FirstIntroPage extends StatefulWidget {
  @override
  _FirstIntroPageState createState() => _FirstIntroPageState();
}
Size size;
class _FirstIntroPageState extends State<FirstIntroPage> {

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        color: Color(0xffFD9850),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              width: size.width/1.5,
              height: size.height/3,
              child: FadeIn(2,Image.asset('assets/app_icon.png')),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: size.width/1.5,
              child: FadeIn(2.33, Text('오늘 날, 우리는 자신의 분야에서 뛰어난 통찰력과 긍정적인 마음가짐을 갖고\n 있는 사람을 타이탄이라고 부릅니다',
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,))
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                width: size.width/1.5,
                  child: FadeIn(2.66, Text('이제부터 이들의 에너지를 통해\n 더 나은 미래로 나아가세요',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.center,))
                ),
          ],
        ),
      ),
    );
  }
}
