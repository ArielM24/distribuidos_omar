import 'package:distribuidos/domain/controllers/pages/search_page_controller.dart';
import 'package:distribuidos/gui/pages/purchase/widgets/body/widgets/produc_list_item.dart';
import 'package:flutter/material.dart';

class SearchResults extends StatefulWidget {
  final SearchPageController controller;
  const SearchResults({Key? key, required this.controller}) : super(key: key);

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      widget.controller.addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.controller.isLoading) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Buscando..."),
          SizedBox(height: 10),
          CircularProgressIndicator(),
        ],
      );
    }
    return ListView.builder(
      itemCount: widget.controller.products.length,
      itemBuilder: (context, index) {
        return ProductListItem(
          product: widget.controller.products[index],
        );
      },
    );
  }
}
