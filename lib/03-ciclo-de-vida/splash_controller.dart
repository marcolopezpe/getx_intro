import 'package:get/get.dart';
import 'package:getx_intro/01-contador/contador_view.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 3), () {
      //Get.to(() => const ContadorView()); // Se queda la pagina en memoria y mantiene back
      Get.off(() => const ContadorView()); // Elimina la pagina de la memoria y sin back
    });
    super.onReady();
  }

  @override
  void onClose() {
    print("onClose");
    super.onClose();
  }
}
