import 'package:distribuidos/domain/controllers/pages/search_page_controller.dart';
import 'package:distribuidos/gui/pages/purchase/widgets/body/purchase_body.dart';
import 'package:flutter/material.dart';

class PurchasePage extends StatelessWidget {
  const PurchasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SearchPageController controller = SearchPageController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: const Text("Comprar producto"),
      ),
      body: PurchaseBody(controller: controller),
    );
  }
}
