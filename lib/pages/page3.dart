import 'package:flutter/material.dart';

class Pagethree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomShape(),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.orange[300], Colors.red[400]])),
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double wigth = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(wigth / 2, height, wigth, height - 100);
    path.lineTo(wigth, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(oldClipper) {
    return true;
  }
}
