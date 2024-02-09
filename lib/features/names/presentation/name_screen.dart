import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_module/features/names/presentation/name_controller.dart';

class NameScreen extends GetView<NamesController> {
  const NameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(controller.names.value)),
      ),
      body: Container(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "Daniel",
            onPressed: () {
              controller.increaseAction();
            },
            child: const Icon(Icons.plus_one),
          ),
          FloatingActionButton(
            heroTag: "Sergio",
            onPressed: () {
              controller.decreaseAction();
            },
            child: const Icon(Icons.restore),
          ),
        ],
      ),
    );
  }
}
