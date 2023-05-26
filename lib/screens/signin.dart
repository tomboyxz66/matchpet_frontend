import 'package:flutter/material.dart';
import 'package:newmatchpet/utility/my_style.dart';

import 'home.dart';
import 'mainscreens.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(
            Icons.keyboard_arrow_left,
            size: 50,
          ),
          onPressed: () {
            Navigator.pop(context);
            MaterialPageRoute route =
                MaterialPageRoute(builder: (value) => Home());
            Navigator.push(context, route);
          },
        ),
        backgroundColor: (MyStyle().fontColor),
        title: Text('ลงชื่อเข้าใช้'),
      ),
      body: Container(
        decoration: BoxDecoration(color: MyStyle().backgroundColor),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MyStyle().showLogo(),
                userForm(),
                MyStyle().mySizedBox(),
                passwordForm(),
                MyStyle().mySizedBox(),
                Loginbutton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Loginbutton() {
    return Container(
      width: 250.0,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
          MaterialPageRoute route =
              MaterialPageRoute(builder: (value) => Mainscreens());
          Navigator.push(context, route);
        },
        child: Text('เข้าสู่ระบบ'),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          primary: MyStyle().fontColor,
        ),
      ),
    );
  }

  Widget userForm() => Container(
        width: 250.0,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.account_box,
              color: MyStyle().fontColor,
            ),
            labelStyle: TextStyle(color: MyStyle().fontColor),
            labelText: 'User :',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().fontColor),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().greenColor),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      );

  Widget passwordForm() => Container(
        width: 250.0,
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.key,
              color: MyStyle().fontColor,
            ),
            labelStyle: TextStyle(color: MyStyle().fontColor),
            labelText: 'Password :',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().fontColor),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().greenColor),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      );
}
