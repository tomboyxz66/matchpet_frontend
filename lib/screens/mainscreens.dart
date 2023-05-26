import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newmatchpet/screens/addmatch.dart';
import 'package:newmatchpet/screens/match.dart';
import 'package:newmatchpet/screens/messenger.dart';
import 'package:newmatchpet/screens/profile.dart';
import 'package:newmatchpet/utility/my_style.dart';

class Mainscreens extends StatefulWidget {
  const Mainscreens({super.key});

  @override
  State<Mainscreens> createState() => _MainscreensState();
}

int _tapIndex = 0;

class _MainscreensState extends State<Mainscreens> {
  static const List<Widget> pagelist = <Widget>[
    Match(),
    AddMatch(),
    Messenger(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('MATCHPET'),
        backgroundColor: (MyStyle().fontColor),
      ),
      body: Container(
        child: pagelist.elementAt(_tapIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: (MyStyle().fontColor),

        //type
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _tapIndex = index;
          });
        },

        ///////////////////////////////
        currentIndex: _tapIndex,

        selectedItemColor: MyStyle().redColor,

        ////////////////////////////////////
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_fire_department_rounded,
                // color: Appcolor.MainColor4,
                size: 30.0,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
                // color: Appcolor.MainColor4,
                size: 30.0,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message_sharp,
                // color: Appcolor.MainColor4,
                size: 30.0,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                // color: Appcolor.MainColor4,
                size: 30.0,
              ),
              label: ''),
        ],
      ),
    );
  }
}
