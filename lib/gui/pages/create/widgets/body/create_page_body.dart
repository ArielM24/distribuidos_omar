import 'package:distribuidos/domain/controllers/pages/create_page_controller.dart';
import 'package:distribuidos/gui/pages/create/widgets/body/widgets/create_body_form.dart';
import 'package:distribuidos/gui/pages/create/widgets/body/widgets/create_image_field.dart';
import 'package:flutter/material.dart';

class CreatePageBody extends StatelessWidget {
  final CreatePageController controller;
  const CreatePageBody({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CreateBodyForm(controller: controller),
          CreateImageField(controller: controller),
        ],
      ),
    );
  }
}
