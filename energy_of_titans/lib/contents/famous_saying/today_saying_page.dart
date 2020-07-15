import 'dart:ui';

import 'package:energy_of_titans/custom_root/fade_route.dart';
import 'package:flutter/material.dart';

class TodaySayingPage extends StatefulWidget {
  @override
  _TodaySayingPageState createState() => _TodaySayingPageState();
}

Size _size;

class _TodaySayingPageState extends State<TodaySayingPage> {
  bool showBottomMenu = false;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    var threshold = 100;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            showBottomMenu = !showBottomMenu;
          });
        },
        //        onPanEnd: (details) {
//          if(details.velocity.pixelsPerSecond.dy > threshold) {
//            this.setState(() {
//              showBottomMenu = false;
//            });
//          } else if(details.velocity.pixelsPerSecond.dy < -threshold) {
//            this.setState(() {
//              showBottomMenu = true;
//            });
//          }
//        },
        child: Container(
          width: _size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/saying_bg1.jpg'),
                  fit: BoxFit.cover)),
          child: Stack(
            children: <Widget>[
              SafeArea(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      if(!showBottomMenu)
                        Navigator.pop(context);
                    },
                  ),
                ),
              ),

              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          '"인류의 최대 약점은 너무나\n 불가능이란 말에 익숙해져 있다는 것이다."',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              height: 1.5),
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
                  ],
                ),
              ),

                //블러 처리 들어간거
//              Visibility(
//                visible: (showBottomMenu) ? true : false,
//                child: AnimatedOpacity(
//                  duration: Duration(milliseconds: 200),
//                  opacity: (showBottomMenu) ? 1.0 : 0.0,
//                  child: BackdropFilter(
//                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
//                    child: Container(
//                      color: Colors.black.withOpacity(0.2),
//                    ),
//                  ),
//                ),
//              ),

              //그냥 어둡게만 한거
              Visibility(
                visible: (showBottomMenu) ? true : false,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 200),
                  opacity: (showBottomMenu) ? 1.0 : 0.0,
                  child: Container(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),

              AnimatedPositioned(
                  curve: Curves.easeInOut,
                  duration: Duration(milliseconds: 200),
                  left: 20,
                  right: 20,
                  bottom: (showBottomMenu) ? 40 : -(_size.height / 7),
                  child: MenuWidget()),
            ],
          ),
        ),
      ),
    );
  }
}



class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          width: width,
          height: height / 7,
          color: Colors.white24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CircleAvatar(
                radius: 27,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.orange,
                  child: IconButton(
                    onPressed: () {
                    },
                    icon: Icon(Icons.share, color: Colors.white, size: 30,),
                  ),
                ),
              ),

              CircleAvatar(
                radius: 27,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.orange,
                  child: IconButton(
                    onPressed: () {
                    },
                    icon: Icon(Icons.bookmark_border, color: Colors.white, size: 30,),
                  ),
                ),
              ),

              CircleAvatar(
                radius: 27,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.orange,
                  child: IconButton(
                    onPressed: () {
                      print('사진 저장하기');
                    },
                    icon: Icon(Icons.file_download, color: Colors.white, size: 30,),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}



