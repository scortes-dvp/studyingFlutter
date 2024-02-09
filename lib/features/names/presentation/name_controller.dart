import 'package:get/get.dart';

class NamesController extends GetxController {
  RxString names = "Title names".obs;
  RxInt number = 0.obs;

  void getRandomName() {
    if (number.value == 0) {
      names.value = "Sergio";
    } else if (number.value == 1) {
      names.value = "Daniel";
    } else {
      names.value = "Ninguno";
    }
  }

  void increaseAction() {
    number.value++;
    getRandomName();
  }

  void decreaseAction() {
    number.value--;
    getRandomName();
  }
}
