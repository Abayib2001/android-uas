class AutomotiveArticle {
  final String title;
  final String description;
  final String urlToImage;
  final String category; // Tambahkan properti kategori

  AutomotiveArticle({
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.category,
  });

  factory AutomotiveArticle.fromJson(Map<String, dynamic> json) {
    return AutomotiveArticle(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      urlToImage:
          'https://a.espncdn.com/watchespn/images/watch-promotional.jpg',
      category: json['category'] ?? '', // Tambahkan handling untuk kategori
    );
  }
}
