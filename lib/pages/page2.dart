import 'package:flutter/material.dart';

class Pagetwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: const Radius.circular(8),
                          bottomLeft: const Radius.circular(8)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 4,
                        )
                      ],
                      gradient: LinearGradient(
                          colors: [Colors.orange[300], Colors.red[400]])),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Image(image: AssetImage('assets/images/trainer_shlem.png')),
                  SizedBox(height: 3),
                  Text(
                    'Начинайте заботиться о своем здоровье прямо сейчас',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.5, 1.5),
                          blurRadius: 8.0,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Image(image: AssetImage('assets/images/trainer_battery.png')),
                  SizedBox(height: 3),
                  Text(
                    'Тренер составит персональную программу питания и будет вести подсчет КБЖУ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.5, 1.5),
                          blurRadius: 8.0,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Image(image: AssetImage('assets/images/trainer_darts.png')),
                  SizedBox(height: 3),
                  Text(
                    'Достигайте своих целей и следите за прогрессом',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.5, 1.5),
                          blurRadius: 5.0,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 32.0,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFF05A22),
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      "НАЧАТЬ",
                      style: TextStyle(
                        color: Color(0xFFF05A22),
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
