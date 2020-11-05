import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:food_app/pages/page1.dart';
import 'package:food_app/pages/page2.dart';
import 'package:food_app/pages/page3.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int _curentIndex = 0;
  int pageindex;


  final List AppbarList = ['Рецепты', 'Тренер', 'Профиль'];

  Widget callpages(_curentIndex) {
    switch (_curentIndex) {
      case 0:
        return Pageone();
      case 1:
        return Pagetwo();
      case 2:
        return Pagethree();

        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: myAppBar(),

      body: callpages(_curentIndex),
      
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              // color: Colors.black12,
              color: Color(0xFF4B1A39).withOpacity(0.2), 
              blurRadius: 4, 
            )
          ]
        ),
        child: Row(
          children: <Widget>[
            buildBottomBar('assets/icons/knife.svg', 30.15, 30.50, 0),
            buildBottomBar('assets/icons/apple.svg', 31.0, 31.35, 1),
            buildBottomBar('assets/icons/profile.svg', 29.85, 30.20, 2),
          ],
        ),
      ),
    );
  }

 Widget buildBottomBar(String route,double height, double width, int index) {
    return GestureDetector(
          onTap: (){
            setState(() {
              _curentIndex = index;
            });
          },
          child: Container( 
            child: IconButton(
              icon: SvgPicture.asset(
                route, 
                height: height, 
                width: width, 
                fit: BoxFit.fill,
                color: (_curentIndex == index)? Colors.orange[900] : Colors.black,
              ), 
              onPressed: null
            ),
            height: MediaQuery.of(context).size.height*0.07,
            width: MediaQuery.of(context).size.width/3,
            decoration: index == _curentIndex ? BoxDecoration(
                color: index == _curentIndex ? Colors.green: Colors.white,
                border: Border(
                  bottom: BorderSide(width: 4, color: Colors.orange[800]),
                ),
                gradient:  LinearGradient(
                  colors: [
                    Colors.orange.withOpacity(0.3),
                    Colors.orange.withOpacity(0.015)
                  ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter
                ),  
              ) : BoxDecoration(), 
          ),
    );
  }


  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,

      flexibleSpace: Container(
        decoration: BoxDecoration(
            boxShadow: (_curentIndex == 0)? <BoxShadow>[
              BoxShadow(
                color: Colors.black,
                blurRadius: 4.0,
              )] : <BoxShadow>[],
              
            gradient: LinearGradient(
                colors: [Colors.orange[300], Colors.red[400]])),
      ),
      title: Text(
        AppbarList[_curentIndex],
        style: TextStyle(
          fontSize: 18,      
          color: Colors.white,
          shadows: <Shadow>[
            Shadow(
              offset: Offset(1.5 , 1.5 ),
              blurRadius: 8.0,
              color: Color.fromARGB(125, 0, 0, 255),
            ),
          ], 
        ),
      ),
      // backgroundColor: Colors.orange[400],
      centerTitle: true,
    );
  }
}
