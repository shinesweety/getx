import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "This is Home screen",
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Next screen",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  "Back to main",
                  style: TextStyle(fontSize: 18),
                )),
            SizedBox(
              height: 8,
            ),
            Text(
              "${Get.arguments}",
              style: TextStyle(color: Colors.green, fontSize: 20),
            )
          ],
        )));
  }
}
