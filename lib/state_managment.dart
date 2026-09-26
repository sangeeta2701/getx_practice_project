import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/my_controller.dart';

class StateMangmentScreen extends StatelessWidget {
  const StateMangmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Controller Lifecycle"),
      ),
      body: Center(
        child: GetBuilder<MyController>(
          init: MyController(), // GetBuilder registers, listens to, and disposes this instance
          builder: (controller) {
            return Text(
              "The value is ${controller.count}",
              style: const TextStyle(fontSize: 25),
            );
          },
        ),
      ),
    );
  }
}