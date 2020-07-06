
import 'package:energy_of_titans/contents/famous_saying/today_saying_page.dart';
import 'package:energy_of_titans/custom_root/fade_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class SayingPage extends StatefulWidget {
  @override
  _SayingPageState createState() => _SayingPageState();
}

Size _size;
List _themeItemList = <Widget> [
  _themeItem('사 랑', 1),
  _themeItem('도 전', 2),
  _themeItem('성 공', 3),
  _themeItem('우 정', 4),
  _themeItem('비즈니스', 5),
];

class _SayingPageState extends State<SayingPage> {
  @override
  Widget build(BuildContext context) {


    _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: SafeArea(
              child: SingleChildScrollView(child: _sayingContent(context)))),
    );
  }
}

Container _sayingContent(context) {
  return Container(
    child: SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              Container(
                margin: EdgeInsets.only(left: 8.0, right: 8.0),
                  width: MediaQuery.of(context).size.width,
//                color: Colors.green,
                  child: Text('오늘의 명언 에너지',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25))),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                    FadeRoute(page: TodaySayingPage()),
//                    MaterialPageRoute(builder: (context) => TodaySayingPage()),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 1.16,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      elevation: 4.0,
                      child: _sayingView(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              Container(
                  margin: EdgeInsets.only(left: 8.0, right: 8.0),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    '테마별',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _themeItemList,
                ),
              ),
            ],
          )),
    ),
  );

}

Widget _themeItem(title, index) {
  return GestureDetector(
    child: Container(
      width: _size.width / 2.5,
      height: _size.width / 2.5 * 1.16,
      child: Padding(
        padding: const EdgeInsets.only(
            bottom: 8.0, top: 8.0, right: 8.0),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)),
          elevation: 4.0,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                    image: AssetImage('assets/theme_bg$index.jpg'),
                    fit: BoxFit.cover)),
            child: Center(child: Text('$title', style: TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.bold),)),
          ),
        ),
      ),
    ),
  );
}


Container _sayingView() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
            image: AssetImage('assets/saying_bg3.jpg'), fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '"인류의 최대 약점은 너무나\n 불가능이란 말에 익숙해져 있다는 것이다."',
            style: TextStyle(color: Colors.white, fontSize: 18, height: 1.5),
            textAlign: TextAlign.center,
          ),
          Padding(padding: EdgeInsets.all(16.0)),
          Text(
            'ㅡ',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "나폴레온 힐",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ),
  );
}
