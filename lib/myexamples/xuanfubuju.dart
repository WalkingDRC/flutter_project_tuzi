import 'package:flutter/material.dart';

class Xuanfubuju extends StatefulWidget {
  Xuanfubuju({Key key}) : super(key: key);

  @override
  _XuanfubujuState createState() => _XuanfubujuState();
}

class _XuanfubujuState extends State<Xuanfubuju> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 320,
              margin: EdgeInsets.only(bottom: 20),
              color: Colors.yellow,
            ),
            // Container(),
            // Container(),
            Container(
              // padding: EdgeInsets.only(bottom: 20),
              width: 150,
              height: 150,
              color: Colors.green,
            ),
          ]),
          Container(
            color: Colors.blue,
            child: Text(
              '这是一行文字这是一行文字',
            ),
          )
        ],
      ),
    );
  }
}
