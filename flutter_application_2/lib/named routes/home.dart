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
                "This is home screen",
                style: TextStyle(color: Colors.purple, fontSize: 30),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                child: Text(
                  "Next Screen",
                  style: TextStyle(fontSize: 10, color: Colors.lightBlue),
                ),
                onPressed: () {
                  Get.toNamed("/nextscreen/1234");
                },
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                child: Text("back to main"),
                onPressed: () {
                  Get.back();
                },
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "GetX",
                style: TextStyle(color: Colors.red, fontSize: 30),
              )
            ],
          ),
        ));
  }
}
