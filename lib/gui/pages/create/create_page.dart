import 'package:distribuidos/domain/controllers/pages/create_page_controller.dart';
import 'package:distribuidos/gui/pages/create/widgets/body/create_page_body.dart';
import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CreatePageController controller = CreatePageController(
        formKey: GlobalKey<FormState>(),
        descriptionController: TextEditingController(),
        nameController: TextEditingController(),
        priceController: TextEditingController(),
        stockController: TextEditingController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.blue[900],
        title: const Text("Capturar producto"),
      ),
      body: CreatePageBody(controller: controller),
      floatingActionButton: FloatingActionButton(
        tooltip: "Capturar",
        backgroundColor: Colors.blue[900],
        onPressed: () => controller.createProduct(context),
        child: const Icon(Icons.check),
      ),
    );
  }
}
