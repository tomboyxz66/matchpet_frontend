import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newmatchpet/screens/home.dart';
import 'package:newmatchpet/screens/mainscreens.dart';
import 'package:newmatchpet/screens/message.dart';
import '../controller/registercontroller.dart';
import '../utility/my_style.dart';

class GuestRegister extends StatefulWidget {
  const GuestRegister({super.key});

  @override
  State<GuestRegister> createState() => _GuestRegisterState();
}

class _GuestRegisterState extends State<GuestRegister> {
  final registerapicontroller = Get.put(Register_controlle());

  String username = "admin88";
  String email = "admins88@example.com";
  String password = "admin";
  String name = "Tom5";
  String species = "Cat";
  String gender = "Female";
  int age = 5;

  @override
  String? choosType, lastName, user, passWord, tel;

  String itemDog = 'Pomeranian';
  List<String> dogList = [
    'Pomeranian',
    'Chihuahua',
    'Siberian Husky',
    'Alaskan Malamute',
    'Shiba Inu',
    'Welsh Corgi',
    'American Bully',
    'Yorkshire Terrier',
    'Schnauzer',
    'Dachshund',
    'French bulldog',
  ];

  String itemCat = 'Silver Blue';
  List<String> catList = [
    'Silver Blue',
    'Khao Manee',
    'Siamese',
    'Scottish Fold',
    'American Shorthair',
    'British Shorthair',
    'Exotic Shorthair',
    'Persian',
    'Ragdoll',
    'Sphinx',
    'Bengal',
  ];

  String itemAge = '<1';
  List<String> ageList = [
    '<1',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
  ];

  String itemGender = 'Male';
  List<String> genderList = [
    'Male',
    'Female',
  ];

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
                MaterialPageRoute(builder: (value) => MessageScreen());
            Navigator.push(context, route);
          },
        ),
        backgroundColor: (MyStyle().fontColor),
        title: Text('สมัครสมาชิก'),
      ),
      body: ListView(
        padding: EdgeInsets.all(30.0),
        children: [
          MyStyle().showLogo(),
          nameForm(),
          MyStyle().mySizedBox(),
          lastForm(),
          MyStyle().mySizedBox(),
          userForm(),
          MyStyle().mySizedBox(),
          passwordForm(),
          MyStyle().mySizedBox(),
          TelForm(),
          MyStyle().mySizedBox(),
          emailForm(),
          MyStyle().mySizedBox(),
          showRadio(),
          MyStyle().mySizedBox(),
          Column(
            children: [
              Text('สายพันธุ์', style: TextStyle(color: MyStyle().fontColor)),
              Visibility(
                child: DropDownDog(),
                visible: choosType == 'Dog',
              ),
              Visibility(
                child: DropDownCat(),
                visible: choosType == 'Cat',
              ),
            ],
          ),
          MyStyle().mySizedBox(),
          namePetForm(),
          MyStyle().mySizedBox(),
          DropDownAge(),
          MyStyle().mySizedBox(),
          DropDownGen(),
          MyStyle().mySizedBox(),
          MyStyle().mySizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              addImage1(),
              addImage2(),
            ],
          ),
          MyStyle().mySizedBox(),
          MyStyle().mySizedBox(),
          moreinfoForm(),
          MyStyle().mySizedBox(),
          MyStyle().mySizedBox(),
          MyStyle().mySizedBox(),
          MyStyle().mySizedBox(),
          Registerbutton()
        ],
      ),
    );
  }

  Row DropDownDog() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButton(
          style: TextStyle(color: MyStyle().fontColor),
          value: itemDog,
          items: dogList
              .map((itemDog) =>
                  DropdownMenuItem(value: itemDog, child: Text(itemDog)))
              .toList(),
          onChanged: ((value) {
            setState(
              () => itemDog = value.toString(),
            );
            print(itemDog);
          }),
        ),
      ],
    );
  }

  Row DropDownCat() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButton(
          style: TextStyle(color: MyStyle().fontColor),
          value: itemCat,
          items: catList
              .map((itemCat) =>
                  DropdownMenuItem(value: itemCat, child: Text(itemCat)))
              .toList(),
          onChanged: ((value) {
            setState(
              () => itemCat = value.toString(),
            );
            print(itemCat);
          }),
        ),
      ],
    );
  }

  Row DropDownAge() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'อายุ',
          style: TextStyle(color: MyStyle().fontColor),
        ),
        MyStyle().mySizedBox(),
        MyStyle().mySizedBox(),
        DropdownButton(
          style: TextStyle(color: MyStyle().fontColor),
          value: itemAge,
          items: ageList
              .map((itemAge) =>
                  DropdownMenuItem(value: itemAge, child: Text(itemAge)))
              .toList(),
          onChanged: ((value) {
            setState(
              () => itemAge = value.toString(),
            );
            print(itemAge);
          }),
        ),
        MyStyle().mySizedBox(),
        MyStyle().mySizedBox(),
        Text(
          'ปี',
          style: TextStyle(color: MyStyle().fontColor),
        ),
      ],
    );
  }

  Row DropDownGen() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'เพศ',
          style: TextStyle(color: MyStyle().fontColor),
        ),
        MyStyle().mySizedBox(),
        MyStyle().mySizedBox(),
        DropdownButton(
          style: TextStyle(color: MyStyle().fontColor),
          value: itemGender,
          items: genderList
              .map((itemGender) =>
                  DropdownMenuItem(value: itemGender, child: Text(itemGender)))
              .toList(),
          onChanged: ((value) {
            setState(
              () => itemGender = value.toString(),
            );
            print(itemGender);
          }),
        ),
      ],
    );
  }

  Widget showRadio() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(
        children: [
          catRadio(),
          MyStyle().mySizedBox(),
          MyStyle().mySizedBox(),
          MyStyle().mySizedBox(),
          dogRadio(),
        ],
      )
    ]);
  }

  Widget catRadio() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Row(
            children: [
              Radio(
                  value: 'Cat',
                  groupValue: choosType,
                  onChanged: (value) {
                    setState(() {
                      choosType = value;
                      print(value);
                    });
                  }),
              Text(
                'เเมว',
                style: TextStyle(color: MyStyle().fontColor),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget dogRadio() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Row(
            children: [
              Radio(
                  value: 'Dog',
                  groupValue: choosType,
                  onChanged: (value) {
                    setState(() {
                      choosType = value;
                      print(value);
                    });
                  }),
              Text(
                'สุนัข',
                style: TextStyle(color: MyStyle().fontColor),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget nameForm() => Container(
        width: 250.0,
        child: TextField(
          onChanged: (value) => name = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.pets,
              color: MyStyle().fontColor,
            ),
            labelStyle: TextStyle(color: MyStyle().fontColor),
            labelText: 'ชื่อ :',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().fontColor),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().redColor),
              borderRadius: BorderRadius.circular(30),
            ),
            helperText: 'กรุณากรอกชื่อของคุณ',
          ),
        ),
      );

  Widget lastForm() => Container(
        width: 250.0,
        child: TextField(
          onChanged: (value) => lastName = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.pets,
              color: MyStyle().fontColor,
            ),
            labelStyle: TextStyle(color: MyStyle().fontColor),
            labelText: 'นามสกุล :',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().fontColor),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().redColor),
              borderRadius: BorderRadius.circular(30),
            ),
            helperText: 'กรุณากรอกนามสกุลของคุณ',
          ),
        ),
      );

  Widget userForm() => Container(
        width: 250.0,
        child: TextField(
          onChanged: (value) => user = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.pets,
              color: MyStyle().fontColor,
            ),
            labelStyle: TextStyle(color: MyStyle().fontColor),
            labelText: 'UserName :',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().fontColor),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().redColor),
              borderRadius: BorderRadius.circular(30),
            ),
            helperText: 'กรุณากรอก UserName ของคุณ',
          ),
        ),
      );

  Widget namePetForm() => Container(
        width: 250.0,
        child: TextField(
          onChanged: (value) => user = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.pets,
              color: MyStyle().fontColor,
            ),
            labelStyle: TextStyle(color: MyStyle().fontColor),
            labelText: 'ชื่อสัตว์เลี้ยง :',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().fontColor),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().redColor),
              borderRadius: BorderRadius.circular(30),
            ),
            helperText: 'กรุณากรอกชื่อสัตว์เลี้ยงของคุณ',
          ),
        ),
      );

  Widget passwordForm() => Container(
        width: 250.0,
        child: TextField(
          obscureText: true,
          onChanged: (value) => passWord = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.pets,
              color: MyStyle().fontColor,
            ),
            labelStyle: TextStyle(color: MyStyle().fontColor),
            labelText: 'Password :',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().fontColor),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().redColor),
              borderRadius: BorderRadius.circular(30),
            ),
            helperText: 'กรุณากรอก Password ของคุณ',
          ),
        ),
      );

  Widget emailForm() => Container(
        width: 250.0,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          onChanged: (value) => email = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.pets,
              color: MyStyle().fontColor,
            ),
            labelStyle: TextStyle(color: MyStyle().fontColor),
            labelText: 'Email :',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().fontColor),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().redColor),
              borderRadius: BorderRadius.circular(30),
            ),
            helperText: 'กรุณากรอก Email ของคุณ',
          ),
        ),
      );

  Widget TelForm() => Container(
        width: 250.0,
        child: TextField(
          keyboardType: TextInputType.phone,
          onChanged: (value) => tel = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.pets,
              color: MyStyle().fontColor,
            ),
            labelStyle: TextStyle(color: MyStyle().fontColor),
            labelText: 'เบอร์โทรศัพท์ :',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().fontColor),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().redColor),
              borderRadius: BorderRadius.circular(30),
            ),
            helperText: 'กรุณากรอกเบอร์โทรศัพท์ของคุณ',
          ),
        ),
      );

  Widget moreinfoForm() => Container(
        width: 250.0,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.pets,
              color: MyStyle().fontColor,
            ),
            labelStyle: TextStyle(color: MyStyle().fontColor),
            labelText: 'ข้อมูลเพิ่มเติม :',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().fontColor),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().redColor),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          maxLines: 10,
        ),
      );

  Column addImage1() {
    return Column(
      children: [
        Container(
          width: 150.0,
          child: Image.asset('images/logo-pet.png'),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.add_photo_alternate)),
      ],
    );
  }

  Column addImage2() {
    return Column(
      children: [
        Container(
          width: 150.0,
          child: Image.asset('images/logo-pet.png'),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.add_photo_alternate)),
      ],
    );
  }

  Widget Registerbutton() {
    return Container(
      width: 250.0,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
          MaterialPageRoute route =
              MaterialPageRoute(builder: (value) => Mainscreens());
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
