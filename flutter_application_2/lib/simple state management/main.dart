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
      title: "state management",
      home: Scaffold(
        appBar: AppBar(
          title: Text("State management"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "name is ${myController.s.name}",
                    style: TextStyle(fontSize: 25),
                  )),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  myController.convertToUpper();
                },
                child: Text("Upper"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
