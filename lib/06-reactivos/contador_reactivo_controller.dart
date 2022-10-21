import 'package:get/get.dart';

class ContadorReactivoController extends GetxController {

  @override
  void onInit() {
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

  RxInt counter = RxInt(0);
  RxInt counter2 = RxInt(40);


  void increment() {
    counter++;
    //update();
  }

  void decrement() {
    counter2--;
  }

  // Normales
  /*String? name;
  int? age;
  double? price;
  bool? status;

  List? names;
  Map? args;*/

  // Reactivos
  /*RxString name = RxString("");
  RxInt age = RxInt(0);
  RxDouble price = RxDouble(0.0);
  RxList<String> names = RxList<String>([]);
  RxMap? args;*/
}