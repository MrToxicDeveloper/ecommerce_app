import 'package:api_calling/screen/home/model/home_model.dart';
import 'package:api_calling/utils/api_helper/api_helper.dart';
import 'package:flutter/foundation.dart';

class HomeProvider extends ChangeNotifier{
  List<dynamic> apiList = [];

  Future<void> apiCalling() async {
    apiHelper a1 = apiHelper();

    apiList = await a1.callApi();
    notifyListeners();
  }
}