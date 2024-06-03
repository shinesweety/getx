import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Home",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Home"),
              backgroundColor: Colors.blue,
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Obx(() => Text(
                        'The value is ${Get.find<HomeController>().count}',
                        style: const TextStyle(fontSize: 25),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        Get.find<HomeController>().increment();
                      },
                      child: Text("Increment")),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("Back")),
                ]))));
  }
}
