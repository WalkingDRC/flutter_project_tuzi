import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindPassword extends StatefulWidget {
  // SignON({Key key}) : super(key: key);

  @override
  _FindPasswordState createState() => _FindPasswordState();
}

class _FindPasswordState extends State<FindPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('找回密码'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
            //子Widget 底部对齐
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: TextFieldWidget(
                  hintText: '请输入手机号',
                  obscureText: false,
                  prefixIconData: Icons.mail_outline,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                //使row中的元素平均分布居中
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    child: Text(
                      "找回密码",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    textColor: Colors.white,
                    color: Colors.blue[500],
                    //点击事件
                    // onPressed: logPrint,
                    onPressed: () {
                      showDialog<Null>(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return new AlertDialog(
                            title: new Text('找回密码成功！'),
                            content: new SingleChildScrollView(
                              child: new ListBody(
                                children: <Widget>[
                                  new Text('请根据短信中找回的密码重新登录！'),
                                  // new Text('内容 2'),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              new FlatButton(
                                child: new Text('确定'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      ).then((val) {
                        print(val);
                      });
                    },
                    // onPressed: () => Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   return new SignOn();
                    // })),
                    // onPressed: null,
                    //按下时，背景高亮颜色。即onPressed不为null
                    highlightColor: Colors.blue,
                    //不可点击时，背景颜色。即onPressed为null
                    disabledColor: Colors.amberAccent[100],
                    //触摸按钮时，类似水波纹扩散的颜色
                    splashColor: Colors.deepPurpleAccent,
                  ),
                  RaisedButton(
                    child: Text(
                      "返回登录",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    textColor: Colors.white,
                    color: Colors.blue[500],
                    onPressed: logPrint,
                    // onPressed: () => Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   return new SignOn();
                    // })),
                    // onPressed: null,
                    //按下时，背景高亮颜色。即onPressed不为null
                    highlightColor: Colors.blue,
                    //不可点击时，背景颜色。即onPressed为null
                    disabledColor: Colors.amberAccent[100],
                    //触摸按钮时，类似水波纹扩散的颜色
                    splashColor: Colors.deepPurpleAccent,
                  )
                ],
              ),
            ]),
      ),
    );
  }

  void logPrint() {
    print("hhhh");
  }
}

///自定义文本输入框
class TextFieldWidget extends StatelessWidget {
  //占位提示文本
  final String hintText;
  //输入框前置图标
  final IconData prefixIconData;
  //输入框后置图标
  final IconData suffixIconData;
  //是否隐藏文本
  final bool obscureText;
  //输入实时回调
  final Function onChanged;

  TextFieldWidget({
    Key key,
    this.hintText,
    this.prefixIconData,
    this.suffixIconData,
    this.obscureText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //构建输入框
    return TextField(
      //实时输入回调
      onChanged: onChanged,
      //是否隐藏文本
      obscureText: obscureText,
      //隐藏文本小圆点的颜色
      cursorColor: Theme.of(context).accentColor,
      //文本样式
      style: TextStyle(
        color: Theme.of(context).accentColor,
        fontSize: 14.0,
      ),
      //输入框的边框
      decoration: InputDecoration(
        //提示文本
        labelText: hintText,
        //提示文本的样式
        labelStyle: TextStyle(color: Theme.of(context).accentColor),
        //可编辑时的提示文本的颜色
        focusColor: Theme.of(context).accentColor,
        //填充
        filled: true,
        //可编辑时 无边框样式
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide.none,
        ),

        //获取输入焦点时的边框样式
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Theme.of(context).accentColor),
        ),

        //文本前置的图标
        prefixIcon: Icon(
          prefixIconData,
          size: 18,
          color: Theme.of(context).accentColor,
        ),
        //文本后置的图标
        suffixIcon: GestureDetector(
          onTap: () {},
          child: Icon(
            suffixIconData,
            size: 18,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
