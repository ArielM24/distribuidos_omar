import 'dart:io';
import 'dart:typed_data';

import 'package:distribuidos/domain/models/product.dart';
import 'package:distribuidos/domain/services/api_service.dart';
import 'package:distribuidos/gui/util/messages.dart';
import 'package:flutter/material.dart';

class CreatePageController {
  String? image;
  GlobalKey<FormState> formKey;
  TextEditingController nameController;
  TextEditingController descriptionController;
  TextEditingController stockController;
  TextEditingController priceController;

  CreatePageController(
      {required this.formKey,
      required this.nameController,
      required this.descriptionController,
      required this.priceController,
      required this.stockController});

  createProduct(BuildContext context) async {
    if (formKey.currentState?.validate() ?? false) {
      if (image != null) {
        await _crear(context);
      } else {
        showImageError(context);
      }
    }
  }

  _crear(BuildContext context) async {
    debugPrint("crear: ${nameController.text}");
    Uint8List imageBytes = await File(image!).readAsBytes();
    Product p = Product(
        name: nameController.text,
        description: descriptionController.text,
        stock: int.parse(stockController.text),
        price: double.parse(priceController.text),
        image: imageBytes);
    debugPrint("product $p");
    //SearchPageController().products.add(p);
    bool success = await ApiService.captureProduct(p);
    if (success) {
      showSuccessDialog(context);
    } else {
      showError(context);
    }
  }
}
