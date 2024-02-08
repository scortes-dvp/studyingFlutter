import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_module/app/routes/routes.dart';
import 'package:introduction_module/features/home/presentation/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Vitavi'),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.names);
            },
            icon: const Icon(
              Icons.arrow_circle_right_outlined,
            ),
          )
        ],
      ),
      body: Obx(
        () {
          return Center(
            child: Text("${controller.counter.value}"),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              controller.decrease();
            },
            child: const Icon(Icons.delete),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              controller.increase();
            },
            child: const Icon(Icons.plus_one),
          ),
        ],
      ),
    );
  }
}
