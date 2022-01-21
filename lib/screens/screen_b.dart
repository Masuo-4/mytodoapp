import 'package:flutter/material.dart';
import 'package:mytodoapp/screens/screen_a.dart';
int count_del = 0;
class ScreenB extends StatefulWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  _ScreenBState createState() => _ScreenBState();
}

class _ScreenBState extends State<ScreenB> {
  Widget _messageItem(String title) {
    return Container(
      decoration: new BoxDecoration(
          border:
              new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 18.0),
        ),
        onTap: () {}, // タップ
        onLongPress: () {
          setState(() {
            list.remove(title);
            count_del += 1;
            count_today += -1;
          });
        }, // 長押し
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            if (index < list.length) {
              return _messageItem(list[index]);
            } else {
              return _messageItem("");
            }
          },
        ),
      ),
    );
  }
}
