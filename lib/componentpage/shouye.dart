import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Shouye extends StatefulWidget {
  //固定写法
  //Shouye({Key key}) : super(key: key);
  Shouye({
    Key key,
  }) : super(key: key);
  // Shouye({Key key, @required this.mt}) : super(key: key);

  // final String mt;
  // @override
  // State<StatefulWidget> createState() {
  //   return null;
  // }

  //将状态管理类和控件联系了起来
  @override
  _ShouyeState createState() {
    return new _ShouyeState();
  }
}

//有状态控件必须结合一个状态管理类进行实现
//命名规则 前面加_后面加State
//管理那个类，尖括号中就放哪个类的类名
class _ShouyeState extends State<Shouye> {
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
      // color: Colors.green[300],
      color: Colors.white,
      // color: Color(0xFF0C9869),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container(
          //   height: 175,
          //   color: Colors.green,
          //   child: Swiper(
          //     itemBuilder: (BuildContext context, int index) {
          //       return imgs[index];
          //     },
          //     itemCount: imgs.length,
          //     autoplay: true,
          //     pagination: new SwiperPagination(),
          //     control: new SwiperControl(),
          //     itemWidth: 300.0,
          //     layout: SwiperLayout.STACK,
          //   ),
          // ),
          Container(
            height: 200,
            padding: EdgeInsets.only(top: 3, bottom: 3),
            // decoration: BoxDecoration(
            //     color: Colors.green[100],
            //     borderRadius: BorderRadius.only(
            //       bottomLeft: Radius.circular(36),
            //       bottomRight: Radius.circular(36),
            //     )),
            // color: Colors.green[100],
            // color: Color(0xFF0C9869),
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
            margin: EdgeInsets.only(left: 30, right: 30),
            // color: Colors.white,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 85,
                  //不太清楚  row不写宽为啥显示不出来
                  width: 160,
                  //写了装饰器这里就不能用颜色
                  // color: Colors.black,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      // color: Colors.green[300],
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          //控制阴影半径
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        )
                      ]),
                  child: Container(
                    margin: EdgeInsets.only(right: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      // color: Colors.white,
                      color: Colors.red[400],
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          // height: 85,
                          // width: 80,
                          // child: Image.network(
                          //   'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic.51yuansu.com%2Fpic2%2Fcover%2F00%2F43%2F88%2F5813a0cc05709_610.jpg&refer=http%3A%2F%2Fpic.51yuansu.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616312145&t=9b5b1be2b45b299760bc25dd0d425e8d',
                          //   fit: BoxFit.contain,
                          // ),
                          child: Icon(
                            Icons.search,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '种兔查询',
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 20,
                // ),
                Container(
                  height: 85,
                  //不太清楚  row不写宽为啥显示不出来
                  width: 160,
                  //写了装饰器这里就不能用颜色
                  // color: Colors.black,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      // color: Colors.green[300],
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          //控制阴影半径
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        )
                      ]),
                  child: Container(
                    margin: EdgeInsets.only(right: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      // color: Colors.white,
                      color: Colors.blue[400],
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          // height: 85,
                          // width: 80,
                          // child: Image.network(
                          //   'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic.51yuansu.com%2Fpic2%2Fcover%2F00%2F43%2F88%2F5813a0cc05709_610.jpg&refer=http%3A%2F%2Fpic.51yuansu.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616312145&t=9b5b1be2b45b299760bc25dd0d425e8d',
                          //   fit: BoxFit.contain,
                          // ),
                          child: Icon(
                            Icons.wallpaper,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          '扫一扫',
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            // color: Colors.white,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 85,
                  //不太清楚  row不写宽为啥显示不出来
                  width: 160,
                  //写了装饰器这里就不能用颜色
                  // color: Colors.black,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      // color: Colors.green[300],
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          //控制阴影半径
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        )
                      ]),
                  child: Container(
                    margin: EdgeInsets.only(right: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      // color: Colors.white,
                      color: Colors.yellow[600],
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          // height: 85,
                          // width: 80,
                          // child: Image.network(
                          //   'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic.51yuansu.com%2Fpic2%2Fcover%2F00%2F43%2F88%2F5813a0cc05709_610.jpg&refer=http%3A%2F%2Fpic.51yuansu.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616312145&t=9b5b1be2b45b299760bc25dd0d425e8d',
                          //   fit: BoxFit.contain,
                          // ),
                          child: Icon(
                            Icons.developer_board,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '芯片解码',
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 20,
                // ),
                Container(
                  height: 85,
                  //不太清楚  row不写宽为啥显示不出来
                  width: 160,
                  //写了装饰器这里就不能用颜色
                  // color: Colors.black,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      // color: Colors.green[300],
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          //控制阴影半径
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        )
                      ]),
                  child: Container(
                    margin: EdgeInsets.only(right: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      // color: Colors.white,
                      color: Colors.pink[600],
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          // height: 85,
                          // width: 80,
                          // child: Image.network(
                          //   'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic.51yuansu.com%2Fpic2%2Fcover%2F00%2F43%2F88%2F5813a0cc05709_610.jpg&refer=http%3A%2F%2Fpic.51yuansu.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616312145&t=9b5b1be2b45b299760bc25dd0d425e8d',
                          //   fit: BoxFit.contain,
                          // ),
                          child: Icon(
                            Icons.mms,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '养兔资讯',
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            // color: Colors.white,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 85,
                  //不太清楚  row不写宽为啥显示不出来
                  width: 160,
                  //写了装饰器这里就不能用颜色
                  // color: Colors.black,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      // color: Colors.green[300],
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          //控制阴影半径
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        )
                      ]),
                  child: Container(
                    margin: EdgeInsets.only(right: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      // color: Colors.white,
                      color: Colors.blueGrey[500],
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          // height: 85,
                          // width: 80,
                          // child: Image.network(
                          //   'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic.51yuansu.com%2Fpic2%2Fcover%2F00%2F43%2F88%2F5813a0cc05709_610.jpg&refer=http%3A%2F%2Fpic.51yuansu.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616312145&t=9b5b1be2b45b299760bc25dd0d425e8d',
                          //   fit: BoxFit.contain,
                          // ),
                          child: Icon(
                            Icons.local_grocery_store_sharp,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '农资商城',
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 20,
                // ),
                Container(
                  height: 85,
                  //不太清楚  row不写宽为啥显示不出来
                  width: 160,
                  //写了装饰器这里就不能用颜色
                  // color: Colors.black,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      // color: Colors.green[300],
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          //控制阴影半径
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        )
                      ]),
                  child: Container(
                    margin: EdgeInsets.only(right: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      // color: Colors.white,
                      color: Colors.brown,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          // height: 85,
                          // width: 80,
                          // child: Image.network(
                          //   'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic.51yuansu.com%2Fpic2%2Fcover%2F00%2F43%2F88%2F5813a0cc05709_610.jpg&refer=http%3A%2F%2Fpic.51yuansu.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616312145&t=9b5b1be2b45b299760bc25dd0d425e8d',
                          //   fit: BoxFit.contain,
                          // ),
                          child: Icon(
                            Icons.headset_mic,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '专家咨询',
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Container(
          //   height: 27,
          //   // color: Colors.green[100],
          //   child: Stack(
          //     children: [
          //       Text(
          //         '选择操作',
          //         style: TextStyle(
          //             fontSize: 20,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.white),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
