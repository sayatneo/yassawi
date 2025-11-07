class Product {
  final String id;
  final String title;
  final String description;
  final int price;
  final double rating;
  final String seller;
  final String category;
  final String imageUrl;
  final String condition;
  final String location;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
    required this.seller,
    required this.category,
    this.imageUrl = '',
    this.condition = 'Пайдаланылған',
    this.location = 'Кампус',
  });
}

