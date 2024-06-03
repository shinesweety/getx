import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_controller.dart';
import 'msg.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: messages(),
      locale: Locale('en', 'us'),
      fallbackLocale: Locale('en', 'us'),
      title: "Internationalisation",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Internationalisation"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: TextStyle(fontSize: 25, color: Colors.purple),
              ),
              ElevatedButton(
                  onPressed: () {
                    myController.changeLanguage('hi', 'IN');
                  },
                  child: Text("Hindi")),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    myController.changeLanguage('fr', 'FR');
                  },
                  child: Text("french")),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    myController.changeLanguage('en', 'US');
                  },
                  child: Text("English")),
            ],
          ),
        ),
      ),
    );
  }
}
