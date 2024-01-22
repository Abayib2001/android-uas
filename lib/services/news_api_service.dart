import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app_2010020007/models/article_model.dart';

class ApiService {
  final endPointUrl = "newsapi.org";
  final client = http.Client();

  Future<List<Article>> getArticlesByCategory(String category) async {
    final queryParameters = {
      'country': 'id',
      'category': category,
      'apiKey': '37dedd6ada4947a1bdbc933d3d7bbe35'
    };

    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameters);

    try {
      final response = await client.get(uri);

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        List<dynamic> body = json['articles'];
        List<Article> articles =
            body.map((dynamic item) => Article.fromJson(item)).toList();

        return articles;
      } else {
        throw Exception('Failed to load articles');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<List<Article>> getArticleAutomotive() async {
    return getArticlesByCategory('otomotive');
  }

  Future<List<Article>> getArticleSports() async {
    return getArticlesByCategory('sports');
  }
}
