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
        title: "Workers",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Workers"),
              backgroundColor: Colors.blue,
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  ElevatedButton(
                      onPressed: () => myController.increment(),
                      child: Text("Increment")),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      onChanged: (val) {
                        myController.increment();
                      },
                    ),
                  ),
                ]))));
  }
}
