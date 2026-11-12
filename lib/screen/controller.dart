import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;
  var total = 120.obs;

  void increment() {
    if (count.value < 33) {
      count++;
    }
  }

  void reset() {
    count.value = 0;
  }
}