/*import 'api_service.dart';
import 'product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = List<Product>().obs;
  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }
}

void fetchProducts() async {
  try {
    isLoading(true);
    var products = await ApiService.fetchProducts();

    if (products != null) {
      products.assignAll(products);
    }
  } finally {
    isLoading(false);
  }
}
*/