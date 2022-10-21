import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_intro/models/response_user_model.dart';

class UserController extends GetxController {
  @override
  void onInit() {
    _initialized();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  List<User> users = [];

  _initialized() {
    fetchData();
  }

  fetchData() async {
    var dio = Dio();
    final result = await dio.get("https://reqres.in/api/users?page=2");
    final response = ResponseUserModel.fromJson(result.data);
    users = response.data ?? [];
    update(["user"]);
  }
}
