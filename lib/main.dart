import 'package:flutter/material.dart';
import 'package:g_named_route/first_page.dart';
import 'package:g_named_route/unknown_page.dart';
import 'package:g_named_route/second_page.dart';
import 'package:g_named_route/third_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "first",
      defaultTransition: Transition.cupertino,
      getPages: [
        GetPage(name: "/first", page: () => const FirstPage()),
        GetPage(name: "/second", page: () => const SecondPage()),
        GetPage(name: "/third", page: () => const ThirdPage()),
        GetPage(name: "/unknown", page: () => const UnknownPage()),
      ],
      unknownRoute: GetPage(name: "/unknown", page: () => const UnknownPage()),
    );
  }
}
