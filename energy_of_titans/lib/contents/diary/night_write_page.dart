import 'dart:ui';

import 'package:flutter/material.dart';

class NightWritePage extends StatefulWidget {
  @override
  _NightWritePageState createState() => _NightWritePageState();
}

Size _size;

class _NightWritePageState extends State<NightWritePage> {
  int bottomSelectedIndex = 0;
  bool _isFirstPage = true;
  String _nextText = '다음';

  PageController _controller = PageController (
    initialPage : 0,
  );

  @override
  void dispose () {
    _controller.dispose ();
    super.dispose ();
  }

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/night.png'), fit: BoxFit.cover)),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.white24,
            ),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                    )),
                Expanded(
                  flex: 7,
                  child: PageView(
                    onPageChanged: (index) {
                      pageChanged(index);
                    },
                    physics: NeverScrollableScrollPhysics(),
                    controller: _controller,
                    children: <Widget>[
                      _FirstArticle(),
                      _SecondArticle(),
                      _ThirdArticle(),
                      _FourthArticle(),
                      _FifthArticle()
                    ],),
                ),

                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Visibility(
                        visible: !_isFirstPage,
                        child: RaisedButton(
                          onPressed: () {
                            _controller.previousPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                          },
                          child: Text(
                            '이전',
                            style: TextStyle(color: Colors.white),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          color: Colors.deepOrange,
                        ),
                      ),
                      Visibility(
                        visible: !_isFirstPage,
                        child: SizedBox(
                          width: _size.width/4,
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          if(bottomSelectedIndex == 4) {
                            Navigator.pop(context);
                          } else {
                            _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                          }
                        },
                        child: Text(
                          _nextText,
                          style: TextStyle(color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        color: Colors.deepOrange,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
      if(index == 0) {
        _isFirstPage = true;
      } else {
        _isFirstPage = false;
      }

      if(index == 4) {
        _nextText = '완료';
      } else {
        _nextText = '다음';
      }
    });
  }
}


class _FirstArticle extends StatelessWidget {
  const _FirstArticle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            width: _size.width,
//                  color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('타이탄454 님!\n\n감사한 인물이 있나요?', style: TextStyle(color: Colors.black, fontSize: 24.0),),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            width: _size.width,
//                  color: Colors.green,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      elevation: 4.0,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        height: 60,
                        width: _size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: TextField(
                            decoration: InputDecoration(
                              hintText: '입력하세요',
                              border: InputBorder.none,
                            ),
                          )),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

      ],
    );
  }
}

class _SecondArticle extends StatelessWidget {
  const _SecondArticle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            width: _size.width,
//                  color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('타이탄454 님!\n\n감사함을 느끼는 물건이 있나요?', style: TextStyle(color: Colors.black, fontSize: 24.0),),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            width: _size.width,
//                  color: Colors.green,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      elevation: 4.0,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        height: 60,
                        width: _size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: TextField(
                            decoration: InputDecoration(
                              hintText: '입력하세요',
                              border: InputBorder.none,
                            ),
                          )),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

      ],
    );
  }
}

class _ThirdArticle extends StatelessWidget {
  const _ThirdArticle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            width: _size.width,
//                  color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('타이탄454 님!\n\n오늘을 더 좋은 날로 만들기 위해\n무엇을 하셨나요?', style: TextStyle(color: Colors.black, fontSize: 24.0),),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            width: _size.width,
//                  color: Colors.green,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      elevation: 4.0,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        height: 60,
                        width: _size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: TextField(
                            decoration: InputDecoration(
                              hintText: '입력하세요',
                              border: InputBorder.none,
                            ),
                          )),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

      ],
    );
  }
}

class _FourthArticle extends StatelessWidget {
  const _FourthArticle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            width: _size.width,
//                  color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('타이탄454 님!\n\n오늘 본 멋진 것이 무엇인가요?', style: TextStyle(color: Colors.black, fontSize: 24.0),),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            width: _size.width,
//                  color: Colors.green,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      elevation: 4.0,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        height: 60,
                        width: _size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: TextField(
                            decoration: InputDecoration(
                              hintText: '입력하세요',
                              border: InputBorder.none,
                            ),
                          )),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

      ],
    );
  }
}

class _FifthArticle extends StatelessWidget {
  const _FifthArticle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            width: _size.width,
//                  color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('타이탄454 님!\n\n내일 할 일이 무엇인가요?', style: TextStyle(color: Colors.black, fontSize: 24.0),),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            width: _size.width,
//                  color: Colors.green,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      elevation: 4.0,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        height: 60,
                        width: _size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: TextField(
                            decoration: InputDecoration(
                              hintText: '입력하세요',
                              border: InputBorder.none,
                            ),
                          )),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

      ],
    );
  }
}