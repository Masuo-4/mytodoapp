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
            //実際の画面で文字を書くスペースが狭いのでTextField()をop+enterでwrap paddingして余白を作る
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "ToDoを入れてください",
                //デコれる
                //文字入れるとこに灰色で薄く「ここに文字列を入れてください」（文字入れたら消えるよ）
              ),
              onChanged: (value) {
                //何かonされたらchangeする。中に関数入れれる
                //今回は引数をvalueにしてやる（なんでも良い）
                // print(value);
                //Runのコンソールにシュミレーターで行われた操作がprintされる
                setState(() {
                  //変化したよっていうのを伝えるの大事
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

          //ボタンの下に「入力された文字列」→入力された文字列関数を挿入
        ],
      ),
    );
  }
}
