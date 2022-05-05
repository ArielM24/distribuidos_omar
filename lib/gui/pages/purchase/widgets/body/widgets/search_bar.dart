import 'package:distribuidos/domain/controllers/pages/search_page_controller.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final SearchPageController controller;

  const SearchBar({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return ListTile(
      title: TextField(
        controller: searchController,
        decoration: const InputDecoration(border: OutlineInputBorder()),
      ),
      trailing: IconButton(
          onPressed: () async =>
              await controller.searchProducts(searchController.text),
          icon: const Icon(Icons.search)),
    );
  }
}
