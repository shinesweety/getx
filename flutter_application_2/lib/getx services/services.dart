import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Service extends GetxService {
  Future<void> incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('Counter') ?? 0) + 1;
    print('Pressed $counter times');
    await prefs.setInt('counter', counter);
  }
}
