import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_intro/models/response_user_model.dart';

class UserReactivoController extends GetxController {
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

  RxBool isLoading = RxBool(false);
  RxList<User> users = RxList<User>([]);
  RxInt counter = RxInt(0);

  _initialized() {
    fetchData();
  }

  fetchData() async {
    isLoading.value = true;

    var dio = Dio();
    final result = await dio.get("https://reqres.in/api/users?page=2&delay=3");
    final response = ResponseUserModel.fromJson(result.data);
    users.value = response.data ?? [];

    isLoading.value = false;
  }

  void isFavorite(User user) {
    user.isFavorite!.value = user.isFavorite!.value ? false : true;
    counter.value = users.where((item) => item.isFavorite!.value == true).length;
  }
}
