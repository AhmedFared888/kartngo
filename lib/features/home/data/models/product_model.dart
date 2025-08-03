class ProductModel {
  final String title;
  final String image;
  final double price;

  ProductModel({required this.title, required this.image, required this.price});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json['name'],
      image: json['image'],
      price: (json['price'] as num).toDouble(),
    );
  }
}
