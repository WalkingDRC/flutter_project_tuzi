import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

//定义了首页有状态控件  他的状态需要一个单独的状态类进行管理
class Datachart extends StatefulWidget {
  //固定写法
  //Shouye({Key key}) : super(key: key);
  Datachart({Key key, @required this.mt}) : super(key: key);

  final String mt;

  //将状态管理类和控件联系了起来
  @override
  _DatachartState createState() {
    return new _DatachartState();
  }
}

class _DatachartState extends State<Datachart> {
  // get segmentedControlValue1 => null;
  //所以这个变量的定义必须后children中是符合的，数字，字符串等
  var segmentedControlValue1 = 1;
  // final segmentedControlValue1 = '1';

  @override
  Widget build(BuildContext context) {
    // return Text('这是图表页面------' + widget.mt);
    // var segmentedControlValue1;
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // getBar(),
          // getLine(),
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment(1, -1),
            child: CupertinoSegmentedControl(
              //会报错
              // groupValue: Colors.blue,
              //groupvlaue中使用的是children中的value值，也就是数字1,2 如果不清楚返回的是什么，用print输出一下看看
              groupValue: segmentedControlValue1,
              selectedColor: Colors.blue,
              children: {
                1: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text('数据列表'),
                ),
                2: Text('数据地图')
              },
              onValueChanged: (value) {
                //点击以后查看返回的value值
                print("the value changed ! $value");
                // print('点击了');
                setState(() {
                  segmentedControlValue1 = value;
                });
                //这种回调不太对啊，在这个contai里面，放到外面去试试
                // if (segmentedControlValue1 == 1) {
                //   return Container(
                //     height: 230,
                //     child: getBar(),
                //   );
                // } else {
                //   return Container(
                //     height: 230,
                //     child: getLine(),
                //   );
                // }
              },
            ),
          ),
          //参考此地址，如何更具不同条件显示不同小组件
          if (segmentedControlValue1 == 1) ...[
            Container(
              height: 230,
              child: getBar(),
            ),
            Container(
              height: 230,
              child: getLine(),
            )
          ] else ...[
            Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Image.network(
                      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.legendschem.com%2Fimages%2FsalseMap.jpg&refer=http%3A%2F%2Fwww.legendschem.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616670541&t=d38ba3b7586456950d9196688dbe4546',
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text('种兔全国销量地图',
                        style: TextStyle(
                          fontSize: 15,
                        ))
                  ],
                ))
          ]
          // Container(
          //   height: 230,
          //   child: getBar(),
          // ),
          // Container(
          //   height: 230,
          //   child: getLine(),
          // )
        ],
      ),
    );
  }

  Widget getLine() {
    List<Linesales> dataLine = [
      new Linesales(new DateTime(2019, 7, 2), 33),
      new Linesales(new DateTime(2019, 7, 3), 55),
      new Linesales(new DateTime(2019, 7, 4), 22),
      new Linesales(new DateTime(2019, 7, 5), 88),
      new Linesales(new DateTime(2019, 7, 6), 123),
      new Linesales(new DateTime(2019, 7, 7), 75),
    ];

    var seriesLine = [
      charts.Series<Linesales, DateTime>(
        data: dataLine,
        domainFn: (Linesales lines, _) => lines.time,
        measureFn: (Linesales lines, _) => lines.sale,
        id: "Lines",
      )
    ];
    //是TimeSeriesChart，而不是LineChart,因为x轴是DataTime类
    Widget line = charts.TimeSeriesChart(seriesLine);
    //line = charts.LineChart(series);
    return line;
  }

  Widget getBar() {
    List<Barsales> dataBar = [
      new Barsales("1", 20),
      new Barsales("2", 50),
      new Barsales("3", 20),
      new Barsales("4", 80),
      new Barsales("5", 120),
      new Barsales("6", 30),
    ];

    var seriesBar = [
      charts.Series(
        data: dataBar,
        domainFn: (Barsales sales, _) => sales.day,
        measureFn: (Barsales sales, _) => sales.sale,
        id: "Sales",
      )
    ];
    return charts.BarChart(seriesBar);
  }
}

class Barsales {
  String day;
  int sale;
  Barsales(this.day, this.sale);
}

class Linesales {
  DateTime time;
  int sale;
  Linesales(this.time, this.sale);
}
