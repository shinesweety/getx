import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  var emailEditing = TextEditingController();
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetStorage and email verifivation",
      home: Scaffold(
        appBar: AppBar(
          title: Text("GetStorage and email verification"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  controller: emailEditing,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: ElevatedButton(
                    onPressed: () {
                      if (GetUtils.isEmail(emailEditing.text)) {
                        storage.write("email", emailEditing.text);
                      } else {
                        Get.snackbar("Incorrect email", "Provide a valid email",
                            colorText: Colors.white,
                            backgroundColor: Colors.red,
                            snackPosition: SnackPosition.BOTTOM);
                      }
                    },
                    child: Text("Write")),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    print("The Email is ${storage.read("email")}");
                  },
                  child: Text("Read"))
            ],
          ),
        ),
      ),
    );
  }
}
