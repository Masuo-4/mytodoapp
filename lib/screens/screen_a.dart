import 'package:flutter/material.dart';

List<String> list = [];
String text = "";
int count_add = 0;
int count_today = 0;

class ScreenA extends StatefulWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  _ScreenAState createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  String _inputText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "ToDoを入れてください",
              ),
              onChanged: (value) {
                setState(() {
                  _inputText = value;
                });
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                list.add(_inputText);
                text = _inputText;
                count_add += 1;
                count_today += 1;
              });
            },
            child: Text("追加"),
          ),
          Text("「"+text+"」を追加しました",
            textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
