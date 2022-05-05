import 'dart:typed_data';

class Product {
  String name;
  String description;
  double price;
  int stock;
  Uint8List? image;
  Product(
      {required this.name,
      required this.description,
      required this.price,
      required this.image,
      required this.stock});

  Map<String, dynamic> get toMap {
    return {
      "name": name,
      "description": description,
      "price": price,
      "stock": stock,
      "image": image
    };
  }

  Product fromMap(Map<String, dynamic> map) {
    return Product(
        name: map["name"] ?? "",
        description: map["description"] ?? "",
        price: map["price"] ?? 0.0,
        image: map["image"],
        stock: map["stock"] ?? 0);
  }

  @override
  String toString() {
    return "$name $price $stock ${image?.length}";
  }
}
