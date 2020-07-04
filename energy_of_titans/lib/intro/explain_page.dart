import 'package:energy_of_titans/intro/fifth_intro_page.dart';
import 'package:energy_of_titans/intro/first_intro_page.dart';
import 'package:energy_of_titans/intro/forth_intro_page.dart';
import 'package:energy_of_titans/intro/second_intro_page.dart';
import 'package:energy_of_titans/intro/third_intro_page.dart';
import 'package:flutter/material.dart';

class ExplainPage extends StatefulWidget {
  @override
  _ExplainPageState createState() => _ExplainPageState();
}

final _itemCount = 5;
Size size;
class _ExplainPageState extends State<ExplainPage> {

  PageController _pageController = PageController();
  LittleDotsPainter _littleDotsPainter = LittleDotsPainter(_itemCount, 0);

  List _pages = [
    FirstIntroPage(),
    SecondIntroPage(),
    ThirdIntroPage(),
    ForthIntroPage(),
    FifthIntroPage()
  ];


  @override
  void initState() {
    super.initState();
    //페이지뷰가 변경이 될 때마다 onPageChanged를 실행시킴
    _pageController.addListener(onPageChanged);
  }

  void onPageChanged() {
    setState(() {
      _littleDotsPainter = LittleDotsPainter(_itemCount, _pageController.page);
    });
//    print(_pageController.page);
  }

  @override
  Widget build(BuildContext context) {
    if(size == null)
      size = MediaQuery.of(context).size;   //핸드폰 화면의 크기를 가져옴
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _images(),
          Positioned(
            left: size.width / 2  - _itemCount * 10,
            right: size.width / 2  - _itemCount * 10,
            bottom: 100,
            height: size.width / _itemCount / 4,
            child: CustomPaint(
              painter: _littleDotsPainter,
            ),
          )
        ],
      ),
    );
  }

  PageView _images() {
    return PageView.builder(
      controller: _pageController,
      itemBuilder: (BuildContext context, int index) {
//        return Image.network('https://picsum.photos/200/300', fit: BoxFit.cover,);
        return Center(
          child: _pages[index],
        );
      }, itemCount: _itemCount,);
  }

  Container firstPage() {
    return Container(
      color: Colors.red,
      child: Text('page1'),
    );
  }


}

class LittleDotsPainter extends CustomPainter {

  final int numOfDots;
  final double page;

  LittleDotsPainter(this.numOfDots, this.page);

  @override
  void paint(Canvas canvas, Size size) {
    for(int i=0; i<numOfDots; i++) {
      canvas.drawCircle(Offset(size.width/numOfDots * i + (size.width/numOfDots/2), 0), size.width/_itemCount/4, Paint()
        ..color = Colors.yellow
        ..strokeWidth = 2
        ..style = PaintingStyle.stroke);
    }

    canvas.drawCircle(Offset(size.width/numOfDots * page + (size.width/numOfDots/2).toDouble(), 0), size.width/_itemCount/4,
        Paint()..color = Colors.yellow);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return (oldDelegate as LittleDotsPainter).page != page;
  }

}