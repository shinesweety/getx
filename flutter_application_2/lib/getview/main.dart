import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'count_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends GetView<CountController> {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.create(() => CountController());
    return GetMaterialApp(
      title: 'Getview',
      home: Scaffold(
        appBar: AppBar(
          title: Text('getView'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'The value is ${controller.count++}',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(controller.hashCode);
                    controller.increment();
                  },
                  child: Text("Increment"))
            ],
          ),
        ),
      ),
    );
  }
}
