import 'package:flutter/material.dart';
import 'home.dart';
import 'next.dart';
import 'unknown_route.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Navigation",
        initialRoute: "/",
        defaultTransition: Transition.zoom,
        getPages: [
          GetPage(
            name: "/",
            page: () => MyApp(),
          ),
          GetPage(
            name: "/home",
            page: () => home(),
          ),
          GetPage(
            name: "/nextscreen/:someValue",
            page: () => next(),
            transition: Transition.leftToRight,
          ),
        ],
        unknownRoute: GetPage(name: '/notfound', page: () => unknownRoute()),
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
                    child: Text("Go to Home"),
                    onPressed: () {
                      Get.toNamed("/home");
                      //Get.offNamed('/home');
                      //Get.offAllNamed('/home');
                      //Get.toNamed('/home');
                    },
                  )
                ]))));
  }
}
