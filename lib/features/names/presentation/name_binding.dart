import 'package:get/get.dart';
import 'package:introduction_module/features/names/presentation/name_controller.dart';

class NamesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NamesController>(() => NamesController());
  }
}
