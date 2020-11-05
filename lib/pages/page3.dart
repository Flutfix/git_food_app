import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Pagethree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 160,
          child: Stack(children: <Widget>[
            ClipPath(
              clipper: CustomShape(),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.orange[300], Colors.red[400]])),
              ),
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.height * 0.001),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/user_image.png')),
                ),
              ),
            )
          ]),
        ),
        SizedBox(height: 100),
        Column(children: <Widget>[
          buildContainer('assets/images/profile_star.png', 36.83, 37.09,
              'Избранные блюда'),
          SizedBox(height: 10),
          buildContainer(
              'assets/images/profile_darts.png', 37.19, 34.84, 'Моя цель'),
          SizedBox(height: 10),
          buildContainer('assets/images/profile_settings.png', 34.0, 34.0,
              'Физические параметры'),
        ])
      ],
    );
  }

  Container buildContainer(
      String route, double width, double height, String textButton) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(color: Colors.black12, spreadRadius: 5, blurRadius: 8)
          ]),
      child: Container(
        width: 400,
        height: 75,
        child: Row(
          children: [
            SizedBox(width: 30),
            Image(
              image: AssetImage(route),
              width: width,
              height: height,
            ),
            Container(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  textButton,
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
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
    path.lineTo(0, height - 90);
    path.quadraticBezierTo(wigth / 2, height, wigth, height - 90);
    path.lineTo(wigth, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(oldClipper) {
    return true;
  }
}
