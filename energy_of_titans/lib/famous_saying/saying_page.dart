import 'package:flutter/material.dart';

class SayingPage extends StatefulWidget {
  @override
  _SayingPageState createState() => _SayingPageState();
}

class _SayingPageState extends State<SayingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/saying_bg2.jpg'), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '"세상은 네가 만드는 것\n네 마음을 자유롭게 해."',
                style: TextStyle(color: Colors.white, fontSize: 18, height: 1.5),
              ),
              Padding(padding: EdgeInsets.all(16.0)),
              Text('ㅡ', style: TextStyle(color: Colors.white),),
              Text("아미르 칸의 영화, '지상의 별처럼' 中", style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
}
