import 'package:energy_of_titans/contents/tab_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Color(0xffF4B166),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background_image.png"),
                fit: BoxFit.cover)),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 100),
//                    color: Colors.purple,
                      width: 400,
                      alignment: Alignment.center,
                      child: Text('타이탄의 에너지',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 50),
                      child: Text('ENERGY OF TITANS',
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 50),
                        child: Text('지혜로운 타이탄들의 에너지를 느껴보세요')),
                  ],
                ),
                Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Text(
                            '계정 입력',
                            style: TextStyle(fontSize: 20),
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: '이메일'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: '비밀번호'),
                        ),
                      ),
                      Text(
                        '비밀번호를 잊으셨습니까?',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Color(0xfffe6a16),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => TabPage()),
                          );
                        },
                        child: Text(
                          '로그인',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Divider(),
                          ),
                          Text(
                            'OR',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Expanded(
                            child: Divider(),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TabPage()),
                            );
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    )
                                  ]),
                              child: Image.asset('assets/google-plus.png')),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text('계정이 없으십니까?')),
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 30),
                    child: Text(
                      '계정 등록하기',
                      style: TextStyle(color: Colors.blueAccent),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
