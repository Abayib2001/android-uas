import 'package:flutter/material.dart';
import '../services/news_api_service.dart';
import '../models/article_model.dart';

class AutomotiveNewsScreen extends StatefulWidget {
  @override
  _AutomotiveNewsScreenState createState() => _AutomotiveNewsScreenState();
}

class _AutomotiveNewsScreenState extends State<AutomotiveNewsScreen> {
  final ApiService _newsApiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita Otomotif'),
      ),
      body: FutureBuilder<List<Article>>(
        future: _newsApiService.getArticleAutomotive(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('Tidak ada berita otomotif.'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final article = snapshot.data![index];
                return ListTile(
                  title: Text(article.title),
                  subtitle: Text(article.description),
                  leading: Image.network(article.urlToImage),
                );
              },
            );
          }
        },
      ),
    );
  }
}
