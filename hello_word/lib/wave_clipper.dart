import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip

    var path = Path();
    path.lineTo(0.0, size.height - 40);

    path.lineTo(size.width / 4, size.height - 40);

    path.quadraticBezierTo(size.width / 2, size.height,
        size.width - (size.width / 4), size.height - 40);

    path.lineTo(size.width, size.height - 40);

    path.lineTo(size.width, 0.0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip

    return null;
    //return false;
    //return true;
  }
}
