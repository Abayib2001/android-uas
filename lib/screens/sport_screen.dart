import 'package:flutter/material.dart';
import '../services/news_api_service.dart';
import '../models/article_model.dart';

class SportsScreen extends StatefulWidget {
  @override
  _SportsScreenState createState() => _SportsScreenState();
}

class _SportsScreenState extends State<SportsScreen> {
  final ApiService _newsApiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita Olahraga'), // Updated app bar title
      ),
      body: FutureBuilder<List<Article>>(
        future: _newsApiService
            .getArticleSports(), // Updated method to fetch sports articles
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
                child: Text('Tidak ada berita olahraga yang ditemukan.'));
          } else {
            return RefreshIndicator(
              onRefresh: () async {
                await Future.delayed(Duration(seconds: 1));
                setState(() {});
              },
              child: ListView.builder(
                key: UniqueKey(),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final article = snapshot.data![index];
                  return ListTile(
                    title: Text(article.title),
                    subtitle: Text(article.description),
                    leading: Image.network(article.urlToImage),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
