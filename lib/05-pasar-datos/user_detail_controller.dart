import 'package:get/get.dart';
import 'package:getx_intro/models/response_user_model.dart';

class UserDetailController extends GetxController {

  User user = User();

  @override
  void onInit() {
    user = Get.arguments as User;
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
}