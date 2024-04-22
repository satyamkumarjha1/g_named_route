import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Get.parameters["a"]??""),
          ElevatedButton(
            onPressed: () {
              Get.toNamed("/third");
            },
            child: const Text("Go to Third Screen"),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Back"),
          ),
        ],
      ),
    );
  }
}
