import 'package:flutter/material.dart';


  class Pageone extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: ListView(scrollDirection: Axis.vertical,

          // mainAxisAlignment: MainAxisAlignment.spaceAround,

          //main children
          children: [
            SizedBox(height: 14),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Что нового?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),

                      // textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text('больше',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(242, 145, 145, 1))),
                ),
              ],
            ),

            Center(
                child: Container(
              height: MediaQuery.of(context).size.height * 0.2,

              //Что нового ListView
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Column(
                    children: [
                      ClipRRect(
                          child: Image.network(
                        'https://avrorra.com/wp-content/uploads/2018/11/post_5bd301eaeb160.jpg',
                        fit: BoxFit.fill,
                        width: 150,
                        height: 105,
                      )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                  SizedBox(width: 7),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://street-foods.ru/wp-content/uploads/2019/05/cropped-%D1%846.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                  SizedBox(width: 7),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://st2.depositphotos.com/1177973/6086/i/950/depositphotos_60866375-stock-photo-grilled-salmon-on-cutting-board.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                ],
              ),
            )),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Просто и Вкусно',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ],
            ),

            // Просто и Вкусно ListView
            Center(
              //made Listview container
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          'https://avatars.mds.yandex.net/get-zen_doc/1860332/pub_5cc5ad1d15df6000b3c21444_5cc5ad32589ccd00b22886f3/scale_1200',
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          'https://cstor.nn2.ru/userfiles/data/ufiles/2017-02/87/63/b6/58b594edc45af_contentpolba1econetru.jpg',
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: 7),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          'https://klopotenko.com/wp-content/uploads/2018/03/jajca-benedikt_siteWeb.jpg',
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Утреннее меню
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Утреннее меню',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),

                      // textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text('больше',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(242, 145, 145, 1))),
                ),
              ],
            ),
            Center(
                child: Container(
              height: MediaQuery.of(context).size.height * 0.2,

              //Утреннее меню ListView
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://avrorra.com/wp-content/uploads/2018/11/post_5bd301eaeb160.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                  SizedBox(width: 7),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://street-foods.ru/wp-content/uploads/2019/05/cropped-%D1%846.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                  SizedBox(width: 7),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://st2.depositphotos.com/1177973/6086/i/950/depositphotos_60866375-stock-photo-grilled-salmon-on-cutting-board.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                ],
              ),
            )),

            // Утреннее меню
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Утреннее меню',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),

                      // textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text('больше',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(242, 145, 145, 1))),
                ),
              ],
            ),
            Center(
                child: Container(
              height: MediaQuery.of(context).size.height * 0.2,

              //Утреннее меню ListView
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://avrorra.com/wp-content/uploads/2018/11/post_5bd301eaeb160.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                  SizedBox(width: 7),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://street-foods.ru/wp-content/uploads/2019/05/cropped-%D1%846.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                  SizedBox(width: 7),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://st2.depositphotos.com/1177973/6086/i/950/depositphotos_60866375-stock-photo-grilled-salmon-on-cutting-board.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                ],
              ),
            )),

            // Утреннее меню
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Утреннее меню',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),

                      // textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text('больше',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(242, 145, 145, 1))),
                ),
              ],
            ),
            Center(
                child: Container(
              height: MediaQuery.of(context).size.height * 0.2,

              //Утреннее меню ListView
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://avrorra.com/wp-content/uploads/2018/11/post_5bd301eaeb160.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                  SizedBox(width: 7),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://street-foods.ru/wp-content/uploads/2019/05/cropped-%D1%846.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                  SizedBox(width: 7),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://st2.depositphotos.com/1177973/6086/i/950/depositphotos_60866375-stock-photo-grilled-salmon-on-cutting-board.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                ],
              ),
            )),

            // Утреннее меню
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Утреннее меню',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),

                      // textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text('больше',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(242, 145, 145, 1))),
                ),
              ],
            ),
            Center(
                child: Container(
              height: MediaQuery.of(context).size.height * 0.2,

              //Утреннее меню ListView
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://avrorra.com/wp-content/uploads/2018/11/post_5bd301eaeb160.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                  SizedBox(width: 7),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://street-foods.ru/wp-content/uploads/2019/05/cropped-%D1%846.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                  SizedBox(width: 7),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://st2.depositphotos.com/1177973/6086/i/950/depositphotos_60866375-stock-photo-grilled-salmon-on-cutting-board.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                ],
              ),
            )),

            // Утреннее меню
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Утреннее меню',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),

                      // textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text('больше',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(242, 145, 145, 1))),
                ),
              ],
            ),
            Center(
                child: Container(
              height: MediaQuery.of(context).size.height * 0.2,

              //Утреннее меню ListView
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://avrorra.com/wp-content/uploads/2018/11/post_5bd301eaeb160.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                  SizedBox(width: 7),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://street-foods.ru/wp-content/uploads/2019/05/cropped-%D1%846.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                  SizedBox(width: 7),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://st2.depositphotos.com/1177973/6086/i/950/depositphotos_60866375-stock-photo-grilled-salmon-on-cutting-board.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                ],
              ),
            )),

            // Утреннее меню
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Утреннее меню',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),

                      // textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text('больше',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(242, 145, 145, 1))),
                ),
              ],
            ),
            Center(
                child: Container(
              height: MediaQuery.of(context).size.height * 0.2,

              //Утреннее меню ListView
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://avrorra.com/wp-content/uploads/2018/11/post_5bd301eaeb160.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                  SizedBox(width: 7),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://street-foods.ru/wp-content/uploads/2019/05/cropped-%D1%846.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                  SizedBox(width: 7),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://st2.depositphotos.com/1177973/6086/i/950/depositphotos_60866375-stock-photo-grilled-salmon-on-cutting-board.jpg',
                            fit: BoxFit.fill,
                            width: 150,
                            height: 105,
                          )),
                      Text('Название'),
                      Text('калорийность'),
                    ],
                  ),
                ],
              ),
            ))
          ]), 
    
    );
  }
}


