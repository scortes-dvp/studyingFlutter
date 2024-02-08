import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_module/app/routes/pages.dart';
import 'package:introduction_module/app/routes/routes.dart';
import 'package:introduction_module/features/home/presentation/home_binding.dart';
import 'package:introduction_module/features/home/presentation/home_screen.dart';

class AppVitavi extends StatelessWidget {
  const AppVitavi({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'App Vitavi',
      home: const HomeScreen(),
      initialBinding: HomeBinding(),
      initialRoute: Routes.home,
      getPages: Pages.pagesList,
      navigatorKey: Get.key,
    );
  }
}
