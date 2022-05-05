import 'package:distribuidos/domain/controllers/pages/create_page_controller.dart';
import 'package:distribuidos/domain/util/validators/validators.dart';
import 'package:distribuidos/gui/widgets/titled_input.dart';
import 'package:flutter/material.dart';

class CreateBodyForm extends StatelessWidget {
  final CreatePageController controller;
  const CreateBodyForm({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TitledInput(
            title: "Nombre:",
            controller: controller.nameController,
            validator: nameValidator,
          ),
          TitledInput(
            title: "Precio:",
            controller: controller.priceController,
            validator: priceValidator,
          ),
          TitledInput(
            title: "Cantidad:",
            controller: controller.stockController,
            validator: stockValidator,
          ),
          TitledInput(
            title: "Descripción:",
            controller: controller.descriptionController,
            validator: descriptionValidator,
            maxLines: 5,
          ),
        ]),
      ),
    );
  }
}
