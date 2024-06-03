import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_controller.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Unique ID",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Unique ID"),
              backgroundColor: Colors.blue,
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  GetBuilder<MyController>(
                    id: 'TextCount',
                    builder: (controller) {
                      return Text(
                        "The value is ${controller.count}",
                        style: TextStyle(fontSize: 25),
                      );
                    },
                  ),
                  GetBuilder<MyController>(
                    builder: (controller) {
                      return Text(
                        "The value is ${controller.count}",
                        style: TextStyle(fontSize: 25),
                      );
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      onPressed: () => myController.increment(),
                      child: Text("Increment"))
                ]))));
  }
}
