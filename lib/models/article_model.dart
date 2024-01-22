// lib/models/article_model.dart

class Article {
  final String title;
  final String description;
  final String urlToImage;
  final String category; // Properti kategori ditambahkan

  Article({
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.category,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      urlToImage:
          'https://a.espncdn.com/watchespn/images/watch-promotional.jpg',
      category: json['category'] ?? '', // Kategori ditambahkan dari data JSON
    );
  }
}
