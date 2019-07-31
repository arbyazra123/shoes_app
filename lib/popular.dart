import 'package:flutter/material.dart';

class PopularItem extends StatefulWidget {
  final String img;
  final String name;
  final String price;
  final Color color1;
  final Color color2;
  final double scale;

  const PopularItem(
      {Key key,
      this.img,
      this.name,
      this.price,
      this.color1,
      this.color2,
      this.scale})
      : super(key: key);

  @override
  _PopularItemState createState() => _PopularItemState();
}

class _PopularItemState extends State<PopularItem> {
  final GlobalKey<ScaffoldState> _scaffoldState =
      new GlobalKey<ScaffoldState>();
  bool clickedFav = false;
  Icon addFav = Icon(Icons.favorite_border, color: Colors.grey);
  Color colorSize = Colors.grey[800];
  @override
  Widget build(BuildContext context) {
    return Stack(
      
      key: _scaffoldState,
      children: <Widget>[
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(100))),
          child: Container(
            padding: EdgeInsets.only(left: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(100)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  width: 55,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          widget.name,
                          style: widget.name.length > 15
                              ? TextStyle(
                                  color: Colors.grey[600],
                                  letterSpacing: 1,
                                  fontFamily: "Righteous",
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold)
                              : TextStyle(
                                  color: Colors.grey[600],
                                  letterSpacing: 1,
                                  fontFamily: "Righteous",
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 20,
                        ),
                        Icon(Icons.star, color: Colors.orange, size: 20),
                        Icon(Icons.star, color: Colors.orange, size: 20),
                        Icon(Icons.star, color: Colors.orange, size: 20),
                        Icon(Icons.star_half, color: Colors.orange, size: 20),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (clickedFav) {
                        clickedFav = false;
                        Scaffold.of(context)
                                              .showSnackBar(SnackBar(
                                            content: Text(
                                                widget.name + " Deleted from wishlist"),
                                            duration: Duration(seconds: 2),
                                          ));
                        addFav =
                            Icon(Icons.favorite_border, color: Colors.grey);
                      } else {
                        Scaffold.of(context)
                                              .showSnackBar(SnackBar(
                                            content: Text(
                                                widget.name + " Added to wishlist"),
                                            duration: Duration(seconds: 2),
                                          ));
                        clickedFav = true;
                        addFav = Icon(Icons.favorite, color: Colors.red[300]);
                      }
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: addFav,
                  ),
                )
              ],
            ),
            height: 64,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [widget.color2, Colors.white])),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              "assets/" + widget.img + ".png",
              width: 70,
              height: 34,
              scale: widget.scale,
            ),
          ),
        ),
      ],
    );
  }
}
