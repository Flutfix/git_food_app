import 'package:flutter/material.dart';

class Bigappbar extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return Container(
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        flexibleSpace: Container(
          decoration: BoxDecoration(

              gradient: LinearGradient(
                  colors: [Colors.orange[300], Colors.red[400]])
                  ),
        ),
        title: Text(
          'Тренер',
          style: TextStyle(fontSize: 18),
        ),
        // backgroundColor: Colors.orange[400],
        centerTitle: true,
      ),
    );

  }

}