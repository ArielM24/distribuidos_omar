import 'package:flutter/material.dart';

class CreatePageController {
  String? image;
  GlobalKey<FormState> formKey;
  TextEditingController nameController;
  TextEditingController descriptionController;
  TextEditingController quantityController;
  TextEditingController priceController;

  CreatePageController(
      {required this.formKey,
      required this.nameController,
      required this.descriptionController,
      required this.priceController,
      required this.quantityController});

  createProduct(BuildContext context) {
    if (formKey.currentState?.validate() ?? false) {
      if (image != null) {
        _crear();
      } else {
        showImageError(context);
      }
    }
  }

  _crear() {
    debugPrint("crear: ${nameController.text}");
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
