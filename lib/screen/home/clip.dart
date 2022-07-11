import 'package:flutter/material.dart';

class TsClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // path.lineTo(0, size.height - 100);
    // path.lineTo(size.width / 2, size.height);
    // path.lineTo(size.width, size.height - 100);
    // path.lineTo(size.width, 10);
    //==========================================
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width);
    // path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // throw UnimplementedError();
    return false;
  }
}
