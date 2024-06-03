import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State management",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "State management",
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetX<MyController>(
                init: MyController(),
                builder: (controller) {
                  return Text(
                    "the data is ${controller.count}",
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.find<MyController>().increment();
                  },
                  child: Text("Increment"))
            ],
          ),
        ),
      ),
    );
  }
}
