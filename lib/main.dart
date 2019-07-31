import 'package:flutter/material.dart';
import 'package:shoes_shop_app/custom_painter.dart';
import 'package:shoes_shop_app/popular.dart';
import 'home_item.dart';

void main() {
  runApp(new MaterialApp(
    title: "Shoes App",
    home: HomeApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> with SingleTickerProviderStateMixin {
  List data = [
    {
      "name": "Adidas Adizero",
      "img": "image_4",
      "price": "Rp. 1.550.000",
      "color1": Colors.grey[800],
      "color2": Colors.blue[800],
      "scale": 2.5
    },
    {
      "name": "Nike Tanjun Womenu0027s",
      "img": "image_1",
      "price": "Rp. 940.000",
      "color1": Colors.grey[800],
      "color2": Colors.green[800],
      "scale": 2.5
    },
    {
      "name": "Nike Running",
      "img": "image_2",
      "price": "Rp. 3.050.000",
      "color1": Colors.grey[800],
      "color2": Colors.blue[800],
      "scale": 1.0
    },
    {
      "name": "Nike Running v2",
      "img": "image_3",
      "price": "Rp. 950.000",
      "color1": Colors.grey[800],
      "color2": Colors.white,
      "scale": 1.0
    },
  ];
  final GlobalKey<ScaffoldState> _scaffoldState =
      new GlobalKey<ScaffoldState>();

  buatList() async {}

  double shadow = 0;
  double heightDetail = 120;
  double rotation = 5;
  Icon add = Icon(Icons.add, color: Colors.white);
  bool clicked = false;
  bool clickedSize = false;
  bool clickedFav = false;
  Icon addFav = Icon(Icons.favorite_border, color: Colors.grey);
  Color colorSize = Colors.grey[800];

  TabController controller;
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldState,
      body: CustomPaint(
        painter: MyCustomPainter(),
        child: Container(
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Discover your shoes",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontFamily: "Righteous",
                          letterSpacing: 1),
                    ),
                    Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  elevation: shadow,
                  borderRadius: BorderRadius.circular(20),
                  child: TextField(
                    onTap: () {
                      setState(() {
                        shadow = 20;
                      });
                    },
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 407,
                  child: ListView.builder(
                    itemCount: data.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: new HomeItem(
                            name: data[i]['name'],
                            img: data[i]['img'],
                            price: data[i]['price'],
                            color1: data[i]['color1'],
                            color2: data[i]['color2'],
                            scale: data[i]['scale']),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 230,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[800]
                      // gradient: LinearGradient(
                      //     begin: Alignment.topCenter,
                      //     end: Alignment.bottomCenter,
                      //     colors: [Colors.blue[700],Colors.grey[900]])
                          ),
                  width: 300,
                  child: Column(
                    children: <Widget>[
                      TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.white,
                        controller: controller,
                        tabs: <Widget>[
                          Tab(
                              child: Text("POPULAR",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold))),
                          Tab(
                              child: Text("TRENDING",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold))),
                          Tab(
                              child: Text("UPCOMING",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold))),
                          Tab(
                              child: Text("RECOMMENDED",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold))),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 170,
                        child: TabBarView(
                          controller: controller,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(
                                  top: 15, left: 15, right: 15),
                              child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                itemCount: data.length,
                                itemBuilder: (context, i) {
                                  return new PopularItem(
                                      name: data[i]['name'],
                                      img: data[i]['img'],
                                      price: data[i]['price'],
                                      color1: data[i]['color1'],
                                      color2: data[i]['color2'],
                                      scale: data[i]['scale']);
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 15, left: 15, right: 15),
                              child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                itemCount: data.length,
                                itemBuilder: (context, i) {
                                  return new PopularItem(
                                      name: data[i]['name'],
                                      img: data[i]['img'],
                                      price: data[i]['price'],
                                      color1: data[i]['color1'],
                                      color2: data[i]['color2'],
                                      scale: data[i]['scale']);
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 15, left: 15, right: 15),
                              child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                itemCount: data.length,
                                itemBuilder: (context, i) {
                                  return new PopularItem(
                                      name: data[i]['name'],
                                      img: data[i]['img'],
                                      price: data[i]['price'],
                                      color1: data[i]['color1'],
                                      color2: data[i]['color2'],
                                      scale: data[i]['scale']);
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 15, left: 15, right: 15),
                              child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                itemCount: data.length,
                                itemBuilder: (context, i) {
                                  return new PopularItem(
                                      name: data[i]['name'],
                                      img: data[i]['img'],
                                      price: data[i]['price'],
                                      color1: data[i]['color1'],
                                      color2: data[i]['color2'],
                                      scale: data[i]['scale']);
                                },
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint();

    Path bottomBG = new Path();
    bottomBG.addRect(Rect.fromLTWH(0, 0, size.width, size.height));
    bottomBG.close();
    paint.color = Colors.grey[300];

    canvas.drawPath(bottomBG, paint);

    Path topBG = new Path();
    topBG.addRect(Rect.fromLTWH(0, 0, size.width, size.height * .5));
    topBG.close();
    paint.color = Colors.grey[800];
    canvas.drawPath(topBG, paint);

    Path topCenterMiring = new Path();
    topCenterMiring.lineTo(size.width, 0);
    topCenterMiring.quadraticBezierTo(
        size.width * .15, size.height * .10, 0, size.height*.30);
    topCenterMiring.close();
    paint.color = Colors.grey[700];
    canvas.drawPath(topCenterMiring, paint);

    Path topLeftMirin = new Path();
    topLeftMirin.lineTo(size.width * .60, 0);
    topLeftMirin.quadraticBezierTo(
        size.width * .05, size.height * .15, 0, size.height*.35);
    topLeftMirin.close();
    paint.color = Colors.grey[500];
    canvas.drawPath(topLeftMirin, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return oldDelegate != this;
  }
}
