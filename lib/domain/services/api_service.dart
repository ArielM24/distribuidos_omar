import 'package:dio/dio.dart';
import 'package:distribuidos/domain/models/product.dart';
import 'package:flutter/foundation.dart';

class ApiService {
  static Future<bool> captureProduct(Product product) async {
    try {
      Response response = await Dio().post(
          "http://20.231.201.107:8080/Servicio/rest/ws/captura_articulo",
          data: {
            "name": product.name,
            "description": product.description,
            "price": product.price,
            "stock": product.stock,
            "photo": product.image,
          });
      debugPrint("${response.data}");
      return true;
    } catch (e) {
      if (e is DioError) {
        debugPrint("${e.response?.data}");
      } else {
        debugPrint("$e");
      }
      return false;
    }
  }

  static Future<List<Product>?> searchProduct(String description) async {
    try {
      Response response = await Dio().post(
          "http://20.231.201.107:8080/Servicio/rest/ws/consulta_articulos",
          options: Options(headers: {
            "Content-Type": "application/x-www-form-urlencoded",
          }),
          data: {
            "description": description,
          });
      debugPrint("${response.data}");
      List<Product> products = [];
      response.data
          .forEach((product) => products.add(Product.fromMap(product)));
      return products;
    } catch (e) {
      if (e is DioError) {
        debugPrint("${e.response?.data}");
      } else {
        debugPrint("$e");
      }
    }
    return null;
  }
}
