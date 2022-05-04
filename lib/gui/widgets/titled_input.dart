import 'package:flutter/material.dart';

class TitledInput extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final int? maxLines;
  final String? Function(String?)? validator;
  const TitledInput(
      {Key? key,
      required this.title,
      required this.controller,
      this.maxLines,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          TextFormField(
            maxLines: maxLines,
            controller: controller,
            validator: validator,
            decoration: const InputDecoration(border: OutlineInputBorder()),
          )
        ],
      ),
    );
  }
}
