import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_module/app/app.dart';
import 'package:introduction_module/features/home/presentation/home_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await DependencyInjection.init();
  runApp(const AppVitavi());
}

class DependencyInjection {
  static Future<void> init() async {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
