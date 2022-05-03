import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.blue[900],
        title: const Text("Crear producto"),
      ),
      body: const Center(
        child: Text("Crear"),
      ),
    );
  }
}
