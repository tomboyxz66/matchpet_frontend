import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newmatchpet/utility/my_style.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.all(30.0), children: [
        addImage1(),
      ]),
    );
  }

  Column addImage1() {
    return Column(
      children: [
        Container(
          width: 250.0,
          child: Image.asset(
            'images/logo-pet.png',
          ),
        ),
        iconProfile(),
        MyStyle().mySizedBox(),
        Divider(color: Colors.black),
        MyStyle().mySizedBox(),
        Text('สัตว์เลี้ยงของคุณ',
            style: TextStyle(fontWeight: FontWeight.bold)),
        MyStyle().mySizedBox(),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
            Text('เพิ่มสัตว์เลี้ยงของคุณ')
          ],
        ),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
            Text('เพิ่มสัตว์เลี้ยงของคุณ')
          ],
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
      ],
    );
  }

  Row iconProfile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.draw_rounded)),
      ],
    );
  }
}
