import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }

  @override
  void onInit() {
    super.onInit();
    //ever(count, (_) => print(count));
    //debounce(count, (callback) => print("Print when user stop tying for 1 sec"),
    //time: Duration(seconds: 1));
    interval(count, (callback) => print("ignore cahnges"),
        time: Duration(seconds: 3));
  }
}
