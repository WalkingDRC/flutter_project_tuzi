import 'package:flutter/material.dart';

class Jiaocuobuju extends StatefulWidget {
  Jiaocuobuju({Key key}) : super(key: key);

  @override
  _JiaocuobujuState createState() => _JiaocuobujuState();
}

class _JiaocuobujuState extends State<Jiaocuobuju> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      // alignment: Alignment(1, 0),
      child: Row(
        children: [
          Container(
            // color: Colors.blue,
            // height: 100,
            // width: 150,
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: 170,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.network(
                        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20180803%2F21%2F1533302467-GyxTqohAYi.jpeg&refer=http%3A%2F%2Fimage.biaobaiju.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1617183006&t=856ea7e0bca73f7a02885a766131eb82',
                        fit: BoxFit.fill,
                      ),
                      Text('这是一只猫')
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 340,
                  width: 170,
                  color: Colors.black,
                  child: Column(
                    children: [
                      Image.network(
                        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20190504%2F20%2F1556974710-QeABYyicLR.jpg&refer=http%3A%2F%2Fimage.biaobaiju.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1617183006&t=f21e0a797da967a9be837652cfcd7b7c',
                        fit: BoxFit.fill,
                      ),
                      Text('这是另一只猫',
                          style: TextStyle(
                            color: Colors.white,
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            // color: Colors.red,
            // height: 100,
            // width: 150,
            child: Column(
              children: [
                Container(
                  height: 365,
                  width: 180,
                  color: Colors.black,
                  child: Column(
                    children: [
                      Image.network(
                        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20190504%2F20%2F1556974710-QeABYyicLR.jpg&refer=http%3A%2F%2Fimage.biaobaiju.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1617183006&t=f21e0a797da967a9be837652cfcd7b7c',
                        fit: BoxFit.contain,
                      ),
                      Text('这是另一只猫',
                          style: TextStyle(
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 120,
                  width: 170,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.network(
                          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20180803%2F21%2F1533302467-GyxTqohAYi.jpeg&refer=http%3A%2F%2Fimage.biaobaiju.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1617183006&t=856ea7e0bca73f7a02885a766131eb82'),
                      Text('这是一只猫')
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
