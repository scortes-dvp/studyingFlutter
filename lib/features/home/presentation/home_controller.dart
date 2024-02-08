import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt counter = 0.obs;

  int increase() {
    return counter.value++;
  }

  int decrease() {
    return counter.value--;
  }
}
