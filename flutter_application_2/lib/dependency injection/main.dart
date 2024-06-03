import 'package:flutter/material.dart';
import 'my_controller.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MyController myController =
    //  Get.put(MyController(), tag: 'instance1', permanent: true);
    // Get.lazyPut(() => MyController(), tag: 'instance2', fenix: true);
    Get.putAsync<MyController>(
      () async => await MyController(),
    );

    return GetMaterialApp(
        title: "Dependency Injection",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Dependency Injection"),
              backgroundColor: Colors.blue,
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  ElevatedButton(
                      onPressed: () {
                        //Get.find<MyController>(tag: 'instance1');
                        Get.find<MyController>();
                        Get.find<MyController>().incrementCounter();
                      },
                      child: Text("Click me"))
                ]))));
  }
}
