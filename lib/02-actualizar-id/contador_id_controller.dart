import 'package:get/get.dart';

class ContadorIdController extends GetxController {
  int counter1 = 0;
  int counter2 = 20;

  void increment() {
    counter1++;
    update(['increment']);
  }

  void decrement() {
    counter2--;
    update(['decrement']);
  }
}
