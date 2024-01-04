import 'dart:convert';

import 'package:flutter_application_api/Models/home_model.dart';
import 'package:flutter_application_api/Services/home_service.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  HomeService _homeService = HomeService();

  List<ResponseModel> list = [];
  bool loading = false;

  @override
  void onInit() {
    // TODO: implement onInit
    getData();
    super.onInit();
  }

  void getData() async {
    try {
      loading = true;
      update();
      http.Response result = await _homeService.getData();
      if (result.statusCode == 200) {
        List<dynamic> dataList = jsonDecode(result.body);
        dataList.forEach((value) {
          list.add(ResponseModel.fromJson(value));
        });
        loading = false;
      }
      update();
    } catch (exception) {
      print(exception);
    }
  }
}
