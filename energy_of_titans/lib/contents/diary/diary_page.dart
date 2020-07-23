import 'package:energy_of_titans/contents/diary/morning_write_page.dart';
import 'package:energy_of_titans/contents/diary/night_write_page.dart';
import 'package:energy_of_titans/custom_root/fade_route.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

import '../../fade_in.dart';

class DiaryPage extends StatefulWidget {
  @override
  _DiaryPageState createState() => _DiaryPageState();
}

Size _size;

class _DiaryPageState extends State<DiaryPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      _morningDiaryPage(context),
      _dinnerDiaryPage(context),
    ];
    _size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            '다이어리',
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(labelColor: Colors.black, tabs: [
            Tab(text: "아침"),
            Tab(text: "저녁"),
          ]),
        ),
        body: TabBarView(children: _pages),
      ),
    );
  }
}

Widget _morningDiaryPage(BuildContext context) {
  _size = MediaQuery.of(context).size;
  return Container(
    color: Colors.white,
    child: Padding(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Container(
//        color: Colors.purple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: '',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: '아침 에너지\n',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25.0)),
                      TextSpan(text: '\n', style: TextStyle(fontSize: 8.0)),
                      TextSpan(
                          text: '매일 아침 다섯 가지 질문에 답변해 보세요.\n',
                          style: TextStyle(color: Colors.black54)),
                      TextSpan(
                          text: '부담갖지 마세요. 딱 한 줄이면 충분합니다!\n',
                          style: TextStyle(color: Colors.black54)),
                      TextSpan(
                          text: '당신의 아침에 긍정적 에너지가 함께합니다.',
                          style: TextStyle(color: Colors.black54)),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                elevation: 4.0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: AssetImage('assets/morning.png'),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(8.0)),
                        _thank1Card(),
                        Padding(padding: EdgeInsets.all(8.0)),
                        _thank2Card(),
                        Padding(padding: EdgeInsets.all(8.0)),
                        _happiness1Card(),
                        Padding(padding: EdgeInsets.all(8.0)),
                        _happiness2Card(),
                        Padding(padding: EdgeInsets.all(8.0)),
                        _todayTaskCard(),
                        Padding(padding: EdgeInsets.all(8.0)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Container(
                height: 50,
                width: _size.width,
                margin: EdgeInsets.only(bottom: 10.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context, FadeRoute(page: MorningWritePage()),);
//                    Navigator.push(context, MaterialPageRoute(builder: (context) => MorningWirtePage()),);
                  },
                  child: Text(
                    '작성하기',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _dinnerDiaryPage(BuildContext context) {
  _size = MediaQuery.of(context).size;
  return Container(
    color: Colors.white,
    child: Padding(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Container(
//        color: Colors.purple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: '',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: '저녁 에너지\n',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25.0)),
                      TextSpan(text: '\n', style: TextStyle(fontSize: 8.0)),
                      TextSpan(
                          text: '매일 저녁 다섯 가지 질문에 답변해 보세요.\n',
                          style: TextStyle(color: Colors.black54)),
                      TextSpan(
                          text: '간단한 답변으로 당신의 하루를 정리할 수 있습니다.\n',
                          style: TextStyle(color: Colors.black54)),
                      TextSpan(
                          text: '타이탄의 에너지가 당신의 멋진 내일을 기원합니다!',
                          style: TextStyle(color: Colors.black54)),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                elevation: 4.0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: AssetImage('assets/night.png'),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(8.0)),
                        _thank1Card(),
                        Padding(padding: EdgeInsets.all(8.0)),
                        _thank2Card(),
                        Padding(padding: EdgeInsets.all(8.0)),
                        _betterDayCard(),
                        Padding(padding: EdgeInsets.all(8.0)),
                        _coolCard(),
                        Padding(padding: EdgeInsets.all(8.0)),
                        _tomorrowTaskCard(),
                        Padding(padding: EdgeInsets.all(8.0)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Container(
                height: 50,
                width: _size.width,
                margin: EdgeInsets.only(bottom: 10.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context, FadeRoute(page: NightWritePage()),);
                  },
                  child: Text(
                    '작성하기',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Card _thank1Card() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 4.0,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ExpansionTile(
          title: Text('감사한 것(사람)'),
          children: <Widget>[
            Padding(padding: EdgeInsets.all(8.0)),
            Text('배울 수 있음에 감사함'),
            Padding(padding: EdgeInsets.all(8.0)),
          ],
        ),
      ],
    ),
  );
}

Card _betterDayCard() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 4.0,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ExpansionTile(
          title: Text('오늘을 더 좋은 날로 만들기 위해 한 것'),
          children: <Widget>[
            Padding(padding: EdgeInsets.all(8.0)),
            Text('배울 수 있음에 감사함'),
            Padding(padding: EdgeInsets.all(8.0)),
          ],
        ),
      ],
    ),
  );
}

Card _thank2Card() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 4.0,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ExpansionTile(
          title: Text('감사한 것(사물)'),
          children: <Widget>[
            Padding(padding: EdgeInsets.all(8.0)),
            Text('배울 수 있음에 감사함'),
            Padding(padding: EdgeInsets.all(8.0)),
          ],
        ),
      ],
    ),
  );
}

Card _happiness1Card() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 4.0,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ExpansionTile(
          title: Text('나를 즐겁게 하는 것(사람)'),
          children: <Widget>[
            Padding(padding: EdgeInsets.all(8.0)),
            Text('목표가 있다는 것이 즐거움'),
            Padding(padding: EdgeInsets.all(8.0)),
          ],
        ),
      ],
    ),
  );
}

Card _happiness2Card() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 4.0,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ExpansionTile(
          title: Text('나를 즐겁게 하는 것(사물)'),
          children: <Widget>[
            Padding(padding: EdgeInsets.all(8.0)),
            Text('목표가 있다는 것이 즐거움'),
            Padding(padding: EdgeInsets.all(8.0)),
          ],
        ),
      ],
    ),
  );
}

Card _todayTaskCard() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 4.0,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ExpansionTile(
          title: Text('오늘 할 일'),
          children: <Widget>[
            Padding(padding: EdgeInsets.all(8.0)),
            Text('다이어리 완성'),
            Padding(padding: EdgeInsets.all(8.0)),
          ],
        ),
      ],
    ),
  );
}

Card _coolCard() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 4.0,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ExpansionTile(
          title: Text('오늘 본 멋진 것'),
          children: <Widget>[
            Padding(padding: EdgeInsets.all(8.0)),
            Text('목표가 있다는 것이 즐거움'),
            Padding(padding: EdgeInsets.all(8.0)),
          ],
        ),
      ],
    ),
  );
}

Card _tomorrowTaskCard() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 4.0,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ExpansionTile(
          title: Text('내일 할 일'),
          children: <Widget>[
            Padding(padding: EdgeInsets.all(8.0)),
            Text('다이어리 완성'),
            Padding(padding: EdgeInsets.all(8.0)),
          ],
        ),
      ],
    ),
  );
}
