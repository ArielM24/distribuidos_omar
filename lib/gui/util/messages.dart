import 'package:flutter/material.dart';

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

showError(BuildContext context) {
  ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
    elevation: 1,
    backgroundColor: Colors.blue[700],
    actions: [
      TextButton(
          child: const Text("Ok", style: TextStyle(color: Colors.white)),
          onPressed: () =>
              ScaffoldMessenger.of(context).hideCurrentMaterialBanner())
    ],
    content:
        const Text("Ocurrio un error", style: TextStyle(color: Colors.white)),
  ));
  Future.delayed(const Duration(seconds: 3))
      .then((_) => ScaffoldMessenger.of(context).hideCurrentMaterialBanner());
}
