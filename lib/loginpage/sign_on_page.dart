import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../componentpage/shouye.dart';
import '../componentpage/mypage/my.dart';
import '../myexamples/jiaocuobuju.dart';
import '../componentpage/datachartmanagement/datachart.dart';

class SignOn extends StatefulWidget {
  // SignON({Key key}) : super(key: key);

  @override
  _SignOnState createState() => _SignOnState();
}

class _SignOnState extends State<SignOn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('种兔全生命周期信息管理系统'),
          //取消scaffold左侧返回按钮
          automaticallyImplyLeading: false,
          //标题文本居中
          centerTitle: true,
          //右侧行为按钮
          // actions: [
          //   IconButton(
          //     //渲染图标用Icon控件
          //     icon: Icon(Icons.search),
          //     onPressed: () {},
          //   )
          // ],
        ),
        bottomNavigationBar: Container(
          //美化当前container容器时使用
          decoration: BoxDecoration(color: Colors.black),
          //手机上一般tabbar高度都是五十
          height: 50,
          child: TabBar(
              labelStyle: TextStyle(height: 0, fontSize: 11),
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.assignment),
                  text: '数据管理',
                ),
                Tab(
                  icon: Icon(Icons.list),
                  text: '数据列表',
                ),
                Tab(
                  icon: Icon(Icons.assessment),
                  text: '数据图表',
                ),
                Tab(
                  icon: Icon(Icons.account_circle),
                  text: '我的',
                )
              ]),
        ),
        body: TabBarView(
          children: <Widget>[
            // Text('aaa'),
            Shouye(),
            Jiaocuobuju(),
            // Text('bbb'),
            // Text('ccc'),
            Datachart(
              mt: '1',
            ),
            Mypage()
            // Text('ddd')
            // Shouye(mt: 'data_management'),
            // Shouye(mt: 'data_list'),
            // Shouye(mt: 'data_chart')
            // Text('bbb'),
            // Datalist(mt: 'data_list'),
            // Text('ccc')
            // Datachart(mt: 'data_chart')
          ],
        ),
      ),
    );
  }
}
