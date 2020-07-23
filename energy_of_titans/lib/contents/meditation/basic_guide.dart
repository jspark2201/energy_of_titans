import 'package:flutter/material.dart';

class BasicGuide extends StatefulWidget {
  @override
  _BasicGuideState createState() => _BasicGuideState();
}

Size _size;

class _BasicGuideState extends State<BasicGuide> {
  bool _played = false;
  double temp = 0;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: _size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/meditation1.png'),
                fit: BoxFit.cover
            )
        ),
        child: Stack(
          children: <Widget>[
            SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 20,
              right: 20,
              child: Container(
                width: _size.width,
                height: _size.height/4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  color: Colors.white
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('abcdefg', style: TextStyle(fontSize: _size.width*.05),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {

                          },
                          iconSize: _size.width * 0.1,
                          icon: Icon(Icons.fast_rewind),
                        ),
                        Container(
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                _played = !_played;
                              });
                            },
                            iconSize: _size.width * 0.2,
                            icon: Padding(
                              padding: EdgeInsets.all(0),
                              child: _played == true ? Icon(Icons.pause) : Icon(Icons.play_arrow)
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {

                          },
                          iconSize: _size.width * 0.1,
                          icon: Icon(Icons.fast_forward),
                        ),

                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      child: Slider(
                        value: temp,
                        max: 100,
                        min: 0,
                        onChanged: (newVal) {
                          setState(() {
                            print(newVal);
                            temp = newVal;

                          });
                        },
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("00:00"),
                          Text("15"+":"+"00")
                        ],
                      ),
                    )



                  ],
                ),
              ),
            ),
            Visibility(
              visible: false,
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            )

          ],
        ),
      ),
    );
  }
}
