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
        Column(
          children: [
            ListTile(
              leading: Image.asset('images/logo-petnotitel.png'),
              title: Text('Card Title'),
              subtitle: Text('Card Subtitle'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
              ),
            ),
            MyStyle().mySizedBox(),
            Divider(color: Colors.black),
            MyStyle().mySizedBox(),
            Text('สัตว์เลี้ยงของคุณ',
                style: TextStyle(fontWeight: FontWeight.bold)),
            MyStyle().mySizedBox(),
            IconButton(
              icon: Icon(Icons.add_box_outlined),
              onPressed: () {},
            ),
            Text('เพิ่มสัตว์เลี้ยง'),
            MyStyle().mySizedBox(),
            ListTile(
              leading: Image.asset('images/logo-pet.png'),
              title: Text('Card Title'),
              subtitle: Text('Card Subtitle'),
            ),
            ListTile(
              leading: Image.asset('images/logo-pet.png'),
              title: Text('Card Title'),
              subtitle: Text('Card Subtitle'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
              ),
            ),
            MyStyle().mySizedBox(),
            MyStyle().mySizedBox(),
            IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
          ],
        )
      ]),
    );
  }
}
