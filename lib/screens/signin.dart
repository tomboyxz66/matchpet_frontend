import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newmatchpet/controller/logincontroller.dart';
import 'package:newmatchpet/controller/match/getpetcontroller.dart';
import 'package:newmatchpet/controller/match/matchcontroller.dart';
import 'package:newmatchpet/controller/profile/insertpetscontroller.dart';
import 'package:newmatchpet/utility/my_style.dart';
import 'home.dart';
import 'mainscreens.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // final Loginapicontroller = Get.put(Login_controller());
  // String username = "admins";
  // String password = "admin";

  // void initState() {
  //   Loginapicontroller.loginAPI(username, password);
  //   super.initState();
  // }

  // final getpetcontroller = Get.put(getpet_controller());
  // int user_id = 1;

  // void initState() {
  //   getpetcontroller.getPetAPI();
  //   super.initState();
  // }

  final insertPetcontroller = Get.put(InsertPet_controller());

  String username = "admin5";
  int user_id = 8;
  String name = "Tom 3";
  String species = "Cat";
  String gender = "Female";
  int age = 5;

  void initState() {
    insertPetcontroller.insertPetAPI(
        username, user_id, name, species, gender, age);
    super.initState();
  }

  // final matchcontroller = Get.put(Match_controller());
  // int user1_id = 1;
  // int user2_id = 2;
  // int pet1_id = 1;
  // int pet2_id = 3;
  // bool is_checked = true;

  // void initState() {
  //   matchcontroller.matchAPI(user1_id, user2_id, pet1_id, pet2_id, is_checked);
  //   super.initState();
  // }

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
                Container(
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
                ),
                MyStyle().mySizedBox(),
                Container(
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
                ),
                MyStyle().mySizedBox(),
                Container(
                  width: 250.0,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        // getpetcontroller.getPetAPI(1);
                        // if ((Loginapicontroller.loginData.value.data!.users) !=
                        //     null) {}
                        // Loginapicontroller.loginAPI(username, password);
                        // Navigator.pop(context);
                        // MaterialPageRoute route = MaterialPageRoute(
                        //     builder: (value) => Mainscreens());
                        // Navigator.push(context, route);
                      });
                    },
                    child: Text('เข้าสู่ระบบ'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      primary: MyStyle().fontColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
