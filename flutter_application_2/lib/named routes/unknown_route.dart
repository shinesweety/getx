import 'package:flutter/material.dart';

class unknownRoute extends StatelessWidget {
  const unknownRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Screen"),
      ),
      body: Center(
        child: Text(
          "Unknown Route",
          style: TextStyle(color: Colors.red, fontSize: 30),
        ),
      ),
    );
  }
}
