import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                   Get.toNamed("/second?a=1&b=2");
                  //Get.offNamed('/second');
                  //Get.offAllNamed('/second');
                },
                child: const Text("navigate to Second Page.")),
          ],
        ),
      ),
    );
  }
}
