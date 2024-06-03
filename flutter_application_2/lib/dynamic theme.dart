import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Bottom Sheet",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Sheet"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Bottom Sheet"),
                  onPressed: () {
                    Get.bottomSheet(
                        Container(
                          child: Wrap(
                            children: [
                              ListTile(
                                leading: Icon(Icons.wb_sunny_outlined),
                                title: Text("Light Theme"),
                                onTap: () =>
                                    {Get.changeTheme(ThemeData.light())},
                              ),
                              ListTile(
                                leading: Icon(Icons.wb_sunny),
                                title: Text("Dark Theme"),
                                onTap: () =>
                                    {Get.changeTheme(ThemeData.dark())},
                              ),
                            ],
                          ),
                        ),
                        backgroundColor: Colors.orange,
                        //isDismissible: false,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 2.0)),
                        enableDrag: false);
                  },
                )
              ]),
        ),
      ),
    );
  }
}
