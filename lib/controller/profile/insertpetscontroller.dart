import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:newmatchpet/model/profile/insertpetsmodel.dart';

class InsertPet_controller extends GetxController {
  var dio = Dio();
  var insertPetData = insertPet_Model().obs;
  var load = false.obs;

  insertPetAPI(String username, int user_id, String name, String species,
      String gender, int age) async {
    load.value = true;
    try {
      var responseInsertPet =
          await dio.post('http://10.0.2.2:8000/api/insertPets', data: {
        "username": username,
        "user_id": user_id,
        "name": name,
        "species": species,
        "gender": gender,
        "age": age
      });
      if (responseInsertPet.statusCode == 200) {
        insertPetData.value = insertPet_Model.fromJson(responseInsertPet.data);
        print(insertPetData.value.message);
      }
      print(responseInsertPet.statusCode);
      load.value = false;
    } catch (e) {
      print(e);
    }
  }
}
