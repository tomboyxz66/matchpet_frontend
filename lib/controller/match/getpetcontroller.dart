import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:newmatchpet/model/match/getpetmodel.dart';

class getpet_controller extends GetxController {
  var dio = Dio();
  var getpetData = getPet_Model().obs;
  var load = false.obs;

  getPetAPI(user_id) async {
    load.value = true;
    try {
      var responsegetpet = await dio
          .post('http://10.0.2.2:8000/api/pets', data: {"user_id": user_id});
      if (responsegetpet.statusCode == 200) {
        getpetData.value = getPet_Model.fromJson(responsegetpet.data);
        print(getpetData.value.data?[1].name ?? 'NO DATA');
      }
      print(responsegetpet.statusCode);
      load.value = false;
    } catch (e) {
      print(e);
    }
  }
}
