import 'package:flutter/material.dart';
import 'package:mytodoapp/screens/screen_b.dart';
import 'package:mytodoapp/screens/screen_a.dart';
class ScreenC extends StatefulWidget {
  const ScreenC({Key? key}) : super(key: key);

  @override
  _ScreenCState createState() => _ScreenCState();
}
double width_ratio = 0.4;
double height_ratio = 0.05;
class _ScreenCState extends State<ScreenC> {
  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Container(
                    width: _screenSize.width * width_ratio,
                    height: _screenSize.height * height_ratio,
                    margin: EdgeInsets.fromLTRB(24.0, 24.0, 0, 0),
                    child: Text("今までこなしたタスク数："),
                  ),
                  Container(
                    width: _screenSize.width * width_ratio,
                    height: _screenSize.height * height_ratio,
                    margin: EdgeInsets.only(top: 24.0),
                    child: Text("${count_del}"),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: _screenSize.width * width_ratio,
                    height: _screenSize.height * height_ratio,
                    margin: EdgeInsets.only(left: 24.0),
                    child: Text("今日こなすべきタスク数合計："),
                  ),
                  Container(
                    width: _screenSize.width * width_ratio,
                    height: _screenSize.height * height_ratio,
                    child: Text("${count_add}"),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: _screenSize.width * width_ratio,
                    height: _screenSize.height * height_ratio,
                    margin: EdgeInsets.only(left: 24.0),
                    child: Text("今日の残りタスク数："),
                  ),
                  Container(
                    width: _screenSize.width * width_ratio,
                    height: _screenSize.height * height_ratio,
                    child: Text("${count_today}"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
