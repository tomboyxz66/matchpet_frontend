import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:newmatchpet/model/loginmodel.dart';

class Login_controller extends GetxController {
  var dio = Dio();
  var loginData = login_Model().obs;
  var load = false.obs;

  loginAPI(String username, String password) async {
    load.value = true;
    try {
      var responseLogin = await dio.post('http://10.0.2.2:8000/api/login',
          data: {"username": username, "password": password});
      if (responseLogin.statusCode == 200) {
        //   Get
        loginData.value = login_Model.fromJson(responseLogin.data);
        print(loginData.value.data?.users ?? 'NO DATA');
      }
      print(responseLogin.statusCode);
      load.value = false;
    } catch (e) {
      print(e);
    }
  }
}
