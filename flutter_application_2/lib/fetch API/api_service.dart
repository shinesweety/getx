/*import 'package:http/http.dart' as http;
import 'product_model.dart';

class ApiService {
  static var client = http.Client();
  static Future<List<Product>> fetchProducts() async {
    var response = await client.get(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie'
            as Uri);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    }
  }
}
*/