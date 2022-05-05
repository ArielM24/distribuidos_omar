import 'package:distribuidos/gui/pages/create/create_page.dart';
import 'package:distribuidos/gui/pages/home/widgets/home_button.dart';
import 'package:distribuidos/gui/pages/purchase/purchase_page.dart';
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
            text: "Capturar producto",
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const CreatePage())),
          ),
          HomeButton(
            text: "Comprar producto",
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const PurchasePage())),
          ),
          HomeButton(
            text: "Ver productos",
            onPressed: () => debugPrint("ver"),
          ),
          HomeButton(
            text: "Editar productos",
            onPressed: () => debugPrint("editar"),
          ),
        ],
      ),
    );
  }
}
