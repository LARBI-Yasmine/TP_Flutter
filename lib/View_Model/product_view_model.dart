import 'package:flutter/foundation.dart';
import '../model/product.dart';
import '../service/api_service.dart';

class ProductViewModel extends ChangeNotifier {
  final ApiService _apiService = ApiService();
  List<Product> _products = [];
  bool _loading = false;

  List<Product> get products => _products;
  bool get loading => _loading;

  Future<void> fetchProducts() async {
    _loading = true;
    notifyListeners();

    try {
      _products = await _apiService.fetchProducts();
    } catch (e) {
      print("Erreur : $e");
    }

    _loading = false;
    notifyListeners();
  }
}
