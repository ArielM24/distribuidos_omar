import 'package:distribuidos/domain/util/validators/validators.dart';
import 'package:distribuidos/gui/widgets/titled_input.dart';
import 'package:flutter/material.dart';

class CreateBodyForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const CreateBodyForm({Key? key, required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    TextEditingController quantityController = TextEditingController();
    TextEditingController priceController = TextEditingController();
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TitledInput(
            title: "Nombre:",
            controller: nameController,
            validator: nameValidator,
          ),
          TitledInput(
            title: "Precio:",
            controller: priceController,
            validator: priceValidator,
          ),
          TitledInput(
            title: "Cantidad:",
            controller: quantityController,
            validator: quantityValidator,
          ),
          TitledInput(
            title: "Descripción:",
            controller: descriptionController,
            validator: descriptionValidator,
            maxLines: 5,
          ),
        ]),
      ),
    );
  }
}
