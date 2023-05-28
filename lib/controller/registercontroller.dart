import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:newmatchpet/model/registermodel.dart';

class Register_controlle extends GetxController {
  var dio = Dio();
  var registerData = Register_Model().obs;
  var load = false.obs;

  registerAPI(String username, String email, String password, String name,
      String species, String gender, int age) async {
    load.value = true;
    try {
      var responseRegister =
          await dio.post('http://10.0.2.2:8000/api/register', data: {
        "username": username,
        "email": email,
        "password": password,
        "name": name,
        "species": species,
        "gender": gender,
        "age": age
      });
      print(responseRegister.data);
      if (responseRegister.statusCode == 200) {
        registerData.value = Register_Model.fromJson(responseRegister.data);
        // print(registerData.value.message?. ?? );
      }
      print(responseRegister.statusCode);
      load.value = false;
    } catch (e) {
      print(e);
    }
  }
}
