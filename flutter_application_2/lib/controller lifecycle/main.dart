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
      title: "Controller lifecycle",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Controller lifecycle"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                  //initState: (data) => myController.increment(),
                  //dispose: (_) => myController.cleanUpTask(),
                  builder: (controller) {
                return Text(
                  "The value is ${controller.count}",
                  style: TextStyle(fontSize: 25),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
