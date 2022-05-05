import 'package:distribuidos/domain/models/product.dart';
import 'package:flutter/foundation.dart';

class SearchPageController with ChangeNotifier {
  static final SearchPageController _instanace =
      SearchPageController._internal();
  SearchPageController._internal();
  factory SearchPageController() {
    return _instanace;
  }
  List<Product> products = [];
  bool isLoading = false;

  searchProducts(String keyWord) async {
    debugPrint("searching $keyWord");
    isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 3));
    isLoading = false;
    notifyListeners();
  }
}
