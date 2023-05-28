import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:newmatchpet/model/match/matchmodel.dart';

class Match_controller extends GetxController {
  var dio = Dio();
  var matchData = match_Model().obs;
  var load = false.obs;

  matchAPI(int user1_id, int user2_id, int pet1_id, int pet2_id,
      bool is_checked) async {
    load.value = true;
    try {
      var responseMatch =
          await dio.post('http://10.0.2.2:8000/api/matchPets', data: {
        "user1_id": user1_id,
        "user2_id": user1_id,
        "pet1_id": user1_id,
        "pet2_id": user1_id,
        "is_checked": is_checked
      });
      if (responseMatch.statusCode == 200) {
        matchData.value = match_Model.fromJson(responseMatch.data);
        print(matchData.value.message);
      }
      print(responseMatch.statusCode);
      load.value = false;
    } catch (e) {
      print(e);
    }
  }
}
