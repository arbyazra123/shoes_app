import 'package:flutter/material.dart';

class BottomCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint();

    Path topLeft = new Path();
    topLeft.lineTo(0,size.width*.25);
    topLeft.quadraticBezierTo(size.width * .15, size.height * .4, 0, size.height);
    paint.color = Colors.blue[200];
    canvas.drawPath(topLeft, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return oldDelegate != this;
  }

}