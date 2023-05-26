import 'package:flutter/material.dart';
import 'package:newmatchpet/screens/signin.dart';
import 'package:newmatchpet/utility/my_style.dart';
import 'signin.dart';
import 'guestregister.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(30.0),
        children: [
          MyStyle().mySizedBox(),
          MyStyle().mySizedBox(),
          MyStyle().mySizedBox(),
          MyStyle().mySizedBox(),
          myLogo(),
          MyStyle().mySizedBox(),
          guestbutton(context),
          MyStyle().mySizedBox(),
          farmbutton(context),
        ],
      ),
    );
  }

  Widget myLogo() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyStyle().showLogo(),
        ],
      );

  Widget guestbutton(context) {
    return Container(
      width: 250.0,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
          MaterialPageRoute route =
              MaterialPageRoute(builder: (value) => SignIn());
          Navigator.push(context, route);
        },
        child: Text('ลงชื่อเข้าใช้'),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          primary: MyStyle().fontColor,
        ),
      ),
    );
  }

  Widget farmbutton(context) {
    return Container(
      width: 250.0,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
          MaterialPageRoute route =
              MaterialPageRoute(builder: (value) => GuestRegister());
          Navigator.push(context, route);
        },
        child: Text('สมัครสมาชิก'),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          primary: MyStyle().fontColor,
        ),
      ),
    );
  }
}
