import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Shouye01 extends StatefulWidget {
  Shouye01({Key key}) : super(key: key);

  @override
  _Shouye01State createState() => _Shouye01State();
}

class _Shouye01State extends State<Shouye01> {
  List<Image> imgs = [
    //建立了一个兔子图片数组
    Image.network(
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Falicliimg.clewm.net%2F616%2F430%2F1430616%2F14816268477569dd17f6a2efa964c51fd803fce7dfb2e1481626829.jpg&refer=http%3A%2F%2Falicliimg.clewm.net&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1615970468&t=558d19b48e00ac13ccf075e0d94ca279",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.371zy.com%2Fuploads%2Fallimg%2F150730%2F1-150I0161150140.jpg&refer=http%3A%2F%2Fwww.371zy.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1615970511&t=e3456fad3acb17ca9e36e7861b109571",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdpic.tiankong.com%2F8h%2Fdm%2FQJ6793042209.jpg%3Fx-oss-process%3Dstyle%2Fshow&refer=http%3A%2F%2Fdpic.tiankong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1615970541&t=9233061ccf15534d0629d396056e4ac8",
      fit: BoxFit.cover,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        // color: Colors.white,
        color: Color(0xFDF6F6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              // color: Colors.orange[100],
              padding: EdgeInsets.only(top: 3, bottom: 3),
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  // return imgs[index];
                  //在返回图片的时候，可以对图片进行修饰
                  return Container(
                      child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(10)),
                    clipBehavior: Clip.antiAlias,
                    child: imgs[index],
                  ));
                },
                itemCount: imgs.length,
                autoplay: true,
                pagination: new SwiperPagination(),
                control: new SwiperControl(),
                viewportFraction: 0.8,
                scale: 0.9,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              height: 153,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  gradient: RadialGradient(
                                      colors: [Colors.red, Colors.orange],
                                      // colors: [
                                      //   Colors.green[800],
                                      //   Colors.green[300]
                                      // ],
                                      //这种写法不行
                                      // colors: [
                                      //   Color(0xFF7B02),
                                      //   Color(0xFFCB52)
                                      // ],
                                      center: Alignment.topLeft,
                                      radius: .98),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 1),
                                        color: Colors.grey[300]),
                                  ],
                                  borderRadius:
                                      BorderRadiusDirectional.circular(25),
                                ),
                                child: Icon(
                                  Icons.search,
                                  size: 45,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '种兔查询',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.purple,
                                  gradient: RadialGradient(colors: [
                                    Colors.green[800],
                                    Colors.lightGreen
                                  ], center: Alignment.topLeft, radius: .98),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 1),
                                        color: Colors.grey[300]),
                                  ],
                                  borderRadius:
                                      BorderRadiusDirectional.circular(25),
                                ),
                                child: Icon(
                                  Icons.wallpaper,
                                  size: 45,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '扫一扫',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.purple,
                                  gradient: RadialGradient(colors: [
                                    Colors.blue[800],
                                    Colors.lightBlue
                                  ], center: Alignment.topLeft, radius: .98),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 1),
                                        color: Colors.grey[300]),
                                  ],
                                  borderRadius:
                                      BorderRadiusDirectional.circular(25),
                                ),
                                child: Icon(
                                  Icons.developer_board,
                                  size: 45,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '芯片解码',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  gradient: RadialGradient(
                                      colors: [
                                        Colors.deepPurple,
                                        Colors.purple
                                      ],
                                      // colors: [
                                      //   Colors.green[800],
                                      //   Colors.green[300]
                                      // ],
                                      //这种写法不行
                                      // colors: [
                                      //   Color(0xFF7B02),
                                      //   Color(0xFFCB52)
                                      // ],
                                      center: Alignment.topLeft,
                                      radius: .98),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 1),
                                        color: Colors.grey[300]),
                                  ],
                                  borderRadius:
                                      BorderRadiusDirectional.circular(25),
                                ),
                                child: Icon(
                                  Icons.local_grocery_store_sharp,
                                  size: 45,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '农资商城',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.purple,
                                  gradient: RadialGradient(colors: [
                                    Colors.red[800],
                                    Colors.redAccent
                                  ], center: Alignment.topLeft, radius: .98),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 1),
                                        color: Colors.grey[300]),
                                  ],
                                  borderRadius:
                                      BorderRadiusDirectional.circular(25),
                                ),
                                child: Icon(
                                  Icons.headset_mic,
                                  size: 45,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '专家咨询',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.purple,
                                  gradient: RadialGradient(
                                      colors: [Colors.grey[800], Colors.grey],
                                      center: Alignment.topLeft,
                                      radius: .98),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 1),
                                        color: Colors.grey[300]),
                                  ],
                                  borderRadius:
                                      BorderRadiusDirectional.circular(25),
                                ),
                                child: Icon(
                                  Icons.settings_ethernet,
                                  size: 45,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '更多',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              child: Row(
                children: [
                  Text(
                    '养兔资讯',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 220,
                  ),
                  Text(
                    '查看更多>',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Container(
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadiusDirectional.circular(30),
                            // ),
                            height: 170,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10)),
                              clipBehavior: Clip.antiAlias,
                              child: Image.network(
                                  'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20190531%2F5c526984559f40e7949552c9edb6e01c.jpeg&refer=http%3A%2F%2F5b0988e595225.cdn.sohucs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1617204621&t=7d62d29a44ba91af3dc5d0c81f305495',
                                  fit: BoxFit.cover),
                            )),
                        Text('兔价低多高少，养兔如何才能赚钱？')
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Container(
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadiusDirectional.circular(30),
                            // ),
                            height: 170,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10)),
                              clipBehavior: Clip.antiAlias,
                              child: Image.network(
                                  'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdpic.tiankong.com%2F9b%2F1v%2FQJ6850132692.jpg&refer=http%3A%2F%2Fdpic.tiankong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1617204621&t=60464340c786c1865d598957881c6c4e',
                                  fit: BoxFit.cover),
                            )),
                        Text('养兔经济效益提升九件事，血配少不了')
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
