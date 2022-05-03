import 'package:distribuidos/gui/pages/create/create_page.dart';
import 'package:distribuidos/gui/pages/home/widgets/home_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: const Text("Distribuidos"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HomeButton(
            text: "Crear producto",
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const CreatePage())),
          ),
          HomeButton(
            text: "Ver productos",
            onPressed: () => debugPrint("ver"),
          ),
          HomeButton(
            text: "Editar productos",
            onPressed: () => debugPrint("editar"),
          ),

          // TextButton(
          //     onPressed: () {},
          //     child: const Text("1"),
          //     style: TextButton.styleFrom(primary: Colors.green)),
          // IconButton(
          //     onPressed: () {},
          //     icon: const Icon(Icons.delete, color: Colors.blue)),
        ],
      ),
    );
  }
}
