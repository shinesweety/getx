import 'package:get/get.dart';
import 'home binding.dart';
import 'homeView.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;
  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    )
  ];
}
