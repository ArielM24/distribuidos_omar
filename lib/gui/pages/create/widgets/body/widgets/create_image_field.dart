import 'dart:io';

import 'package:distribuidos/domain/controllers/pages/create_page_controller.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class CreateImageField extends StatefulWidget {
  final CreatePageController controller;
  const CreateImageField({Key? key, required this.controller})
      : super(key: key);

  @override
  State<CreateImageField> createState() => _CreateImageFieldState();
}

class _CreateImageFieldState extends State<CreateImageField> {
  String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blue[900]),
              onPressed: pickImage,
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: const Text(
                    "Seleccionar Foto",
                    textAlign: TextAlign.center,
                  ))),
        ),
        const SizedBox(height: 10),
        Center(
          child: image != null
              ? Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 150,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Image(
                    fit: BoxFit.contain,
                    image: Image.file(File(image!)).image,
                  ),
                )
              : Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 150,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Colors.blue[100]),
                  child: const Center(child: Text("Imagen")),
                ),
        ),
      ],
    );
  }

  pickImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      String? imagePath = result.files.single.path;
      if (imagePath != null) {
        setState(() {
          image = imagePath;
          widget.controller.image = image;
        });
      }
    }
  }
}
