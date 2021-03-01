// // import 'dart:html';
// import 'dart:math';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Tuzi Demo',
//       // theme: ThemeData(
//       //   // This is the theme of your application.
//       //   //
//       //   // Try running your application with "flutter run". You'll see the
//       //   // application has a blue toolbar. Then, without quitting the app, try
//       //   // changing the primarySwatch below to Colors.green and then invoke
//       //   // "hot reload" (press "r" in the console where you ran "flutter run",
//       //   // or simply save your changes to "hot reload" in a Flutter IDE).
//       //   // Notice that the counter didn't reset back to zero; the application
//       //   // is not restarted.
//       //   primarySwatch: Colors.blue,
//       //   // This makes the visual density adapt to the platform that you run
//       //   // the app on. For desktop platforms, the controls will be smaller and
//       //   // closer together (more dense) than on mobile platforms.
//       //   visualDensity: VisualDensity.adaptivePlatformDensity,
//       // ),
//       home: LoginPage(),
//     );
//   }
// }

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() {
//     return _LoginPageState();
//   }
// }

// //全局定义获取颜色的方法
// Color getRandomWhiteColor(Random random) {
//   //透明度为0,200   255为不透明
//   var a = random.nextInt(255);
//   var r = random.nextInt(255);
//   var g = random.nextInt(255);
//   var b = random.nextInt(255);
//   return Color.fromARGB(a, r, g, b);
// }

// class _LoginPageState extends State<LoginPage> {
//   //创建一个集合保存气泡
//   List<BobbleBean> _list = [];

//   //获取一个随机数
//   Random _random = new Random(DateTime.now().microsecondsSinceEpoch);

//   //气泡运动速度控制
//   double _maxSpeed = 1.0;

//   //设置气泡最大半径
//   double _maxredius = 100;

//   //设置气泡最大角度
//   double _maxTheta = 2 * pi;

//   //初始化函数中创建气泡，设置生命周期
//   @override
//   void initState() {
//     super.initState();

//     for (int i = 0; i < 20; i++) {
//       BobbleBean bean = new BobbleBean();
//       //随机获取透明白色
//       bean.color = getRandomWhiteColor(_random);
//       //设置位置，后面再调整
//       bean.position = Offset(-1, -1);
//       //设置随机运动速度
//       bean.speed = _random.nextDouble() * _maxSpeed;
//       //设置气泡半径
//       bean.redius = _random.nextDouble() * _maxredius;
//       //设置气泡角度
//       bean.theta = _random.nextDouble() * _maxTheta;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         child: Stack(
//           children: [
//             //渐变背景
//             buildBackground(),
//             //气泡
//             buildBobbleWidget(context),
//             //高斯模糊
//             //顶部文本
//             //输入区域
//           ],
//         ),
//       ),
//     );
//   }

// //渐变背景
//   buildBackground() {
//     return Container(
//       decoration: BoxDecoration(
//           gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//             Colors.lightBlueAccent.withOpacity(0.3),
//             Colors.lightBlue.withOpacity(0.3),
//             Colors.blue.withOpacity(0.3)
//           ])),
//     );
//   }

//   buildBobbleWidget(BuildContext context) {
//     //画板
//     return CustomPaint(
//       size: MediaQuery.of(context).size,
//       //画布
//       painter: CustomMypainter(list: _list, random: _random),
//     );
//   }
// }

// //创建画布
// class CustomMypainter extends CustomPainter {
//   List<BobbleBean> list;
//   Random random;

//   CustomMypainter({this.list, this.random});

//   //创建画笔
//   Paint _paint = new Paint()..isAntiAlias = true;

//   @override
//   void paint(Canvas canvas, Size size) {
//     //在绘制前重新计算每个点的位置
//     list.forEach((element) {
//       //根据点的速度 与角度和来计算每次偏移后新的坐标中心
//       Offset newCenterOffset = calculatexy(element.speed, element.theta);
//       double dx = newCenterOffset.dx + element.position.dx;
//       double dy = newCenterOffset.dy + element.position.dy;

//       //完全边界计算
//       if (dx < 0 || dx > size.width) {
//         dx = random.nextDouble() * size.width;
//       }
//       if (dy < 0 || dy > size.height) {
//         dy = random.nextDouble() * size.height;
//       }

//       element.position = Offset(dx, dy);
//     });

//     //绘制
//     list.forEach((element) {
//       //修改画笔颜色
//       _paint.color = element.color;
//       //绘制圆
//       canvas.drawCircle(element.position, element.redius, _paint);
//     });
//   }

//   @override
//   bool shouldRepaint(CustomMypainter oldDelegate) => false;

//   @override
//   bool shouldRebuildSemantics(CustomMypainter oldDelegate) => false;

//   Offset calculatexy(double speed, double theta) {
//     return Offset(speed * cos(theta), speed * sin(speed));
//   }
// }

// //定义气泡
// class BobbleBean {
//   //位置
//   Offset position;
//   //颜色
//   Color color;
//   //运动速度
//   double speed;
//   //运动角度
//   double theta;
//   //半径
//   double redius;
// }
