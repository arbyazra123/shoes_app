import 'package:flutter/material.dart';

class HomeItem extends StatefulWidget {
  final String img;
  final String name;
  final String price;
  final Color color1;
  final Color color2;
  final double scale;

  const HomeItem(
      {Key key,
      this.img,
      this.name,
      this.price,
      this.color1,
      this.color2,
      this.scale})
      : super(key: key);

  @override
  _HomeItemState createState() => _HomeItemState();
}

class _HomeItemState extends State<HomeItem> {
  bool addedToCart = false;
  String cart = "ADD TO CARD";
  Color colorCart = Colors.grey[900];

  double topFlow = 270;
  double shadow = 0;
  double heightDetail = 120;
  double rotation = 5;
  Icon add = Icon(Icons.add, color: Colors.white);
  bool clicked = false;
  bool clickedSize = false;
  Color colorSize = Colors.grey[800];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: widget.color2,
            gradient: RadialGradient(
                focal: Alignment.bottomCenter,
                radius: 0.7,
                center: Alignment.bottomCenter,
                colors: [
                  widget.color2,
                  Colors.grey[900],
                ]),
          ),
          child: Transform.rotate(
            angle: (22 / 7) / rotation,
            child: Image.asset(
              "assets/" + widget.img + ".png",
              scale: widget.scale,
            ),
          ),
          height: 300,
          width: 290,
        ),
        AnimatedPadding(
          duration: Duration(milliseconds: 500),
          padding: EdgeInsets.only(top: topFlow, left: 30),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 5,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 15.0, left: 15, right: 15),
                    child: ListView(
                      children: <Widget>[
                        Text(
                          widget.name,
                          style: TextStyle(
                              color: Colors.orange[300],
                              letterSpacing: 1,
                              fontFamily: "Righteous",
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 20,
                            ),
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            Icon(Icons.star_half,
                                color: Colors.orange, size: 20),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.price,
                          style: TextStyle(
                              color: Colors.grey[400],
                              letterSpacing: 1,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        clicked
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "SIZE",
                                    style: TextStyle(
                                        fontFamily: "Righteous",
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[600],
                                        letterSpacing: 1),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            if (clickedSize) {
                                              colorSize = Colors.grey[800];
                                              clickedSize = false;
                                            } else {
                                              colorSize = Colors.orange;
                                              clickedSize = true;
                                            }
                                          });
                                        },
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: colorSize),
                                            height: 35,
                                            width: 35,
                                            child: Center(
                                              child: Text(
                                                "41",
                                                style: TextStyle(
                                                    color: Colors.grey[100]),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey[800],
                                          ),
                                          height: 35,
                                          width: 35,
                                          child: Center(
                                            child: Text(
                                              "42",
                                              style: TextStyle(
                                                  color: Colors.grey[100]),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey[800],
                                          ),
                                          height: 35,
                                          width: 35,
                                          child: Center(
                                            child: Text(
                                              "43",
                                              style: TextStyle(
                                                  color: Colors.grey[100]),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey[800],
                                          ),
                                          height: 35,
                                          width: 35,
                                          child: Center(
                                            child: Text(
                                              "47",
                                              style: TextStyle(
                                                  color: Colors.grey[100]),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (addedToCart) {
                                          addedToCart = false;
                                          cart = "ADD TO CART";
                                          colorCart = Colors.grey[900];
                                          Scaffold.of(context)
                                              .showSnackBar(SnackBar(
                                            content: Text(
                                                widget.name + " Deleted from cart"),
                                            duration: Duration(seconds: 2),
                                          ));
                                          heightDetail = 120;
                                          add = Icon(Icons.add,
                                              color: Colors.white);
                                          clicked = false;
                                          topFlow = 270;
                                        } else {
                                          heightDetail = 120;
                                          add = Icon(Icons.add,
                                              color: Colors.white);
                                          clicked = false;
                                          topFlow = 270;

                                          addedToCart = true;
                                          cart = "DELETE FROM CART";
                                          colorCart = Colors.grey[600];
                                          Scaffold.of(context)
                                              .showSnackBar(SnackBar(
                                            content: Text(widget.name +
                                                " Added to cart"),
                                            duration: Duration(seconds: 1),
                                          ));
                                        }
                                      });
                                    },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusDirectional.circular(
                                                  20)),
                                      elevation: 5,
                                      color: colorCart,
                                      child: Container(
                                        height: 30,
                                        width: 100,
                                        child: Center(
                                            child: Text(
                                          cart,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10),
                                        )),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : SizedBox(
                                width: 10,
                              )
                      ],
                    ),
                  ),
                  height: heightDetail,
                  width: 230,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    if (clicked) {
                      heightDetail = 120;
                      add = Icon(Icons.add, color: Colors.white);
                      clicked = false;
                      topFlow = 270;
                    } else {
                      add = Icon(Icons.close, color: Colors.white);
                      topFlow = 80;

                      heightDetail = 300;
                      clicked = true;
                    }
                  });
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(20)),
                  elevation: 10,
                  color: Colors.blue[500],
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(child: add),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
