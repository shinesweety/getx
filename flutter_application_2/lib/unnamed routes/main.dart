import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Navigation",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Navigation"),
              backgroundColor: Colors.blue,
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  ElevatedButton(
                    onPressed: () async {
                      Get.to(home(),
                          fullscreenDialog: true,
                          transition: Transition.zoom,
                          duration: Duration(milliseconds: 3000),
                          curve: Curves.bounceInOut);
                      //Get.off(home());
                      //Get.offAll(home());
                      //Get.to(home(), arguments: "data grom main");
                      var data = await Get.to(() => home());
                      print("The recieved data is $data");
                    },
                    child: Text("Go to home"),
                  )
                ]))));
  }
}
