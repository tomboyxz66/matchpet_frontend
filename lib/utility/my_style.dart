import 'package:flutter/material.dart';

class MyStyle {
  Color fontColor = Color.fromARGB(255, 244, 163, 208);
  Color fontColorlow = Color.fromARGB(255, 247, 223, 236);
  Color greenColor = Color.fromARGB(255, 25, 242, 29);
  Color backgroundColor = Color.fromARGB(255, 255, 255, 255);
  Color redColor = Color.fromARGB(255, 248, 65, 33);

  Container showLogo() {
    return Container(
      width: 320.0,
      child: Image.asset('images/logo-pet.png'),
    );
  }

  SizedBox mySizedBox() => SizedBox(
        width: 8.0,
        height: 16.0,
      );
  MyStyle();
}
