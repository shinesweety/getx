import 'package:flutter/material.dart';
import 'package:get/get.dart';

class next extends StatelessWidget {
  const next({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          "${Get.parameters['someValue']}",
          style: TextStyle(color: Colors.red, fontSize: 30),
        ),
      ),
    );
  }
}
