import 'student.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var s = student();
  void convertToUpper() {
    s.name.value = s.name.value.toUpperCase();
  }
}
