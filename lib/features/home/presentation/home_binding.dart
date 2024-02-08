import 'package:get/get.dart';
import 'package:introduction_module/features/home/presentation/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
