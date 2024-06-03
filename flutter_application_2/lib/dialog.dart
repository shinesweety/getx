import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "SnackBar",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Dialog"),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Show dialog"),
                  onPressed: () {
                    //Get.defaultDialog();
                    Get.defaultDialog(
                        title: "dialog title",
                        titleStyle:
                            TextStyle(fontSize: 25, color: Colors.white),
                        middleText: "This is the middle text",
                        middleTextStyle:
                            TextStyle(fontSize: 20, color: Colors.white),
                        backgroundColor: Colors.purpleAccent,
                        radius: 50,
                        content: Row(
                          children: [
                            CircularProgressIndicator(),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Text("Data loading"),
                            ),
                          ],
                        ),
                        textCancel: "cancel",
                        cancelTextColor: Colors.white,
                        textConfirm: "confirm",
                        confirmTextColor: Colors.white,
                        onCancel: () {},
                        onConfirm: () {},
                        buttonColor: Colors.green,
                        cancel: Text(
                          "Cancels",
                          style: TextStyle(color: Colors.white),
                        ),
                        confirm: Text(
                          "Confirms",
                          style: TextStyle(color: Colors.white),
                        ),
                        actions: [
                          ElevatedButton(
                            child: Text("Action 1"),
                            onPressed: () {
                              Get.back();
                            },
                          ),
                          ElevatedButton(
                            child: Text("Action 2"),
                            onPressed: () {},
                          )
                        ]);
                  },
                )
              ],
            ),
          ),
        ));
  }
}
