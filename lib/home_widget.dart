import 'package:flutter/material.dart';
import 'package:food_app/appbar.dart';
import 'package:food_app/Bigappbar.dart';
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

      // appBar: Myappbar(_curentIndex),
      appBar: myAppBar(),

      //Create main Column

      body: callpages(_curentIndex),

      bottomNavigationBar: myBottomBar(),
    );
  }

  Container myBottomBar() {
    return Container(
        decoration: BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(
            // color: Colors.black12,
            color: Color(0xFF4B1A39).withOpacity(0.2), 
            blurRadius: 4, 
            )
        ]),
        child: BottomNavigationBar(
          elevation: 1,
          selectedFontSize: 0,
          iconSize: 31,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.green[500],
          backgroundColor: Colors.white,
          currentIndex: _curentIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              // icon:  SvgPicture.asset('icons/trainer.svg'),
              icon: Icon(Icons.emoji_events_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: '',
            ),
          ],
          onTap: (index) {
            setState(() {
              _curentIndex = index;
            });
            
          },
        ));
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,

      flexibleSpace: Container(
        decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black,
                blurRadius: (_curentIndex == 0) ? 4.0 : 0.0,
              )
            ],
            gradient: LinearGradient(
                colors: [Colors.orange[300], Colors.red[400]])),
      ),
      title: Text(
        AppbarList[_curentIndex],
        style: TextStyle(fontSize: 18),
      ),
      // backgroundColor: Colors.orange[400],
      centerTitle: true,
    );
  }
}
