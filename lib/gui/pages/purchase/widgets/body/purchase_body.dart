import 'package:distribuidos/domain/controllers/pages/search_page_controller.dart';
import 'package:distribuidos/gui/pages/purchase/widgets/body/widgets/search_bar.dart';
import 'package:distribuidos/gui/pages/purchase/widgets/body/widgets/search_results.dart';
import 'package:flutter/material.dart';

class PurchaseBody extends StatelessWidget {
  final SearchPageController controller;

  const PurchaseBody({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: SearchBar(controller: controller)),
        Expanded(flex: 9, child: SearchResults(controller: controller))
      ],
    );
  }
}
