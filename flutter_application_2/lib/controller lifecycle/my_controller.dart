import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0;
  void increment() async {
    await Future<int>.delayed(Duration(seconds: 5));
    this.count++;
    update();
  }

  void cleanUpTask() {
    print("Clean up task");
  }

  void onInit() {
    super.onInit();
  }

  void onClose() {
    super.onClose();
  }
}
