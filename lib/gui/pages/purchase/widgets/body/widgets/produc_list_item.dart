import 'package:distribuidos/domain/models/product.dart';
import 'package:flutter/material.dart';

class ProductListItem extends StatelessWidget {
  final Product product;
  const ProductListItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        onTap: () {},
        leading: product.image != null
            ? Image(image: MemoryImage(product.image!))
            : const Icon(Icons.fastfood_outlined),
        title: Text(product.name),
        subtitle: Text("cantidad: ${product.stock}"),
        trailing: Text("\$${product.price}"),
      ),
    );
  }
}
