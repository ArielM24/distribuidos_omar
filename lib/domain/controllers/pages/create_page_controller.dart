import 'dart:io';
import 'dart:typed_data';

import 'package:distribuidos/domain/controllers/pages/search_page_controller.dart';
import 'package:distribuidos/domain/models/product.dart';
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
    Uint8List? imageBytes = await File(image!).readAsBytes();
    Product p = Product(
        name: nameController.text,
        description: descriptionController.text,
        stock: int.parse(stockController.text),
        price: double.parse(priceController.text),
        image: imageBytes);
    debugPrint("product $p");
    SearchPageController().products.add(p);
    showSuccessDialog(context);
  }

  showSuccessDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Producto creado"),
            content: const Text("Producto registrado correctamente"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Ok"))
            ],
          );
        });
  }

  showImageError(BuildContext context) {
    ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
      elevation: 1,
      backgroundColor: Colors.blue[700],
      actions: [
        TextButton(
            child: const Text("Ok", style: TextStyle(color: Colors.white)),
            onPressed: () =>
                ScaffoldMessenger.of(context).hideCurrentMaterialBanner())
      ],
      content: const Text("Debe seleccionar una imagen",
          style: TextStyle(color: Colors.white)),
    ));
    Future.delayed(const Duration(seconds: 3))
        .then((_) => ScaffoldMessenger.of(context).hideCurrentMaterialBanner());
  }
}
