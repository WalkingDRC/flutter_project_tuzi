import 'package:flutter/material.dart';

class Mypage extends StatefulWidget {
  Mypage({Key key}) : super(key: key);

  @override
  _MypageState createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Column(
        children: [
          Container(
            height: 180,
            width: 500,
            decoration: BoxDecoration(
                color: Colors.green[400],
                boxShadow: [
                  BoxShadow(offset: Offset(0, 3), color: Colors.grey[300]),
                ],
                borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(40),
                    bottomEnd: Radius.circular(40))),
            child: Container(
              // child: Text('这是个人信息页面'),
              margin: EdgeInsets.only(top: 50, left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 80,
                      width: 80,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(35)),
                        clipBehavior: Clip.antiAlias,
                        child: Image.network(
                          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fww2.sinaimg.cn%2Fmw690%2Fe3ebbd1fly1gmr70uhz7jj20u00u0tj0.jpg&refer=http%3A%2F%2Fwww.sina.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616490261&t=d0a66cdb7ec5262b1a7a7d7039ff6838",
                          fit: BoxFit.cover,
                        ),
                      )),
                  Container(
                    padding: EdgeInsets.only(top: 5, left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '张三',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '13001999999',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.blue,
                    padding: EdgeInsets.only(left: 100, top: 20),
                    child: Icon(
                      Icons.settings,
                      size: 40,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: Container(
              child: Column(
                children: [
                  Container(
                    // padding: EdgeInsets.only(top: 2),
                    height: 115,
                    width: 500,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
                          child: Text(
                            '员工账户分配',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Divider(
                          height: 1.0,
                          color: Colors.black26,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
                          child: Row(
                            //row中的元素，垂直方向居中对齐
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.chrome_reader_mode,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '账号列表',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black87),
                              ),
                              SizedBox(
                                width: 260,
                              ),
                              Text(
                                '>',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.black26),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          height: 2.0,
                          indent: 30,
                          color: Colors.black26,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
                          child: Row(
                            //row中的元素，垂直方向居中对齐
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.how_to_reg,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '新建账号',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 260,
                              ),
                              Text(
                                '>',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.black26),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // padding: EdgeInsets.only(top: 2),
                    height: 80,
                    width: 500,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
                          child: Text(
                            '管理员密码管理',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Divider(
                          height: 1.0,
                          color: Colors.black26,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
                          child: Row(
                            //row中的元素，垂直方向居中对齐
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.network_locked,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '修改密码',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 260,
                              ),
                              Text(
                                '>',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.black26),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 500,
                    color: Colors.white,
                    child: Center(
                      child: Text('退出登录'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
