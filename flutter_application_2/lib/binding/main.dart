import 'package:flutter/material.dart';
import 'package:flutter_application_2/binding/my_controller.dart';
import 'package:flutter_application_2/named%20routes/home.dart';
import 'package:get/get.dart';
import 'home_conroller_binding.dart';
import 'myapp_controller_binding.dart';

void main() {
  MyAppControllerBinding().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //initialBinding: AllControllerBinding(),
      title: "Binding",
      getPages: [
        GetPage(
          name: '/home',
          page: () => home(),
          binding: HomeControllerBinding(),
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text("Binding"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    'The value is ${Get.find<MyController>().count}',
                    style: TextStyle(fontSize: 25),
                  )),
              ElevatedButton(
                  onPressed: () {
                    Get.find<MyController>().increment();
                  },
                  child: Text("Increment")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/home()');
                  },
                  child: Text("Home")),
            ],
          ),
        ),
      ),
    );
  }
}
