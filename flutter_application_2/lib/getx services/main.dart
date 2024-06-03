import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'services.dart';

Future<void> main() async {
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  print('Starting services...');
  await Get.putAsync(() async => await Service());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "GetX services",
        home: Scaffold(
            appBar: AppBar(
              title: Text("GetX services"),
              backgroundColor: Colors.blue,
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  ElevatedButton(
                      onPressed: () {
                        Get.find<Service>().incrementCounter();
                      },
                      child: Text("Increment"))
                ]))));
  }
}
