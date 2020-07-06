import 'package:energy_of_titans/custom_root/fade_route.dart';
import 'package:energy_of_titans/custom_root/rotation_route.dart';
import 'package:energy_of_titans/fade_in.dart';
import 'package:energy_of_titans/contents/famous_saying/saying_page.dart';
import 'package:energy_of_titans/intro/explain_page.dart';
import 'package:energy_of_titans/login_page.dart';
import 'package:energy_of_titans/custom_root/scale_route.dart';
import 'package:energy_of_titans/contents/tab_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FifthIntroPage extends StatefulWidget {
  @override
  _FifthIntroPageState createState() => _FifthIntroPageState();
}

Size size;

class _FifthIntroPageState extends State<FifthIntroPage> {

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(context,
//                RotationRoute(page: LoginPage()),
                FadeRoute(page: TabPage()),
//              ScaleRoute(page: SayingPage()),
//            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        child: Container(
          width: size.width,
          height: size.height,
          color: Color(0xffFA5B25),
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: FadeIn(2, Text('당신의 미래와 성공을 위한', style: TextStyle(color: Colors.white, fontSize: 16),))),
                  FadeIn(2.33, Text('타이탄의 에너지', style: TextStyle(color: Colors.yellow, fontSize: 30, fontWeight: FontWeight.bold),)),
                  Container(height: size.height/8,),
                  FadeIn(2.66, RichText(text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan> [
                        TextSpan(
                            text: '매일',
                            style: TextStyle(color: Colors.white, fontSize: 16)
                        ),
                        TextSpan(
                            text: ' "에너지" ',
                            style: TextStyle(color: Colors.yellow, fontSize: 20, fontWeight: FontWeight.bold)
                        ),
                        TextSpan(
                            text: '얻어가세요',
                            style: TextStyle(color: Colors.white, fontSize: 16)
                        ),
                      ]
                  ))),
                  Container(height: size.height/4,),
                  Container(
                      child: FadeIn(2.99, Text('화면을 터치하시면 앱이 시작됩니다', style: TextStyle(color: Colors.white, fontSize: 16),)))
                ],
          ),
        ),
      ),
    );
  }
}
