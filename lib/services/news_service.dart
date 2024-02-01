import 'package:dio/dio.dart';
import 'package:whether_api/models/article_model.dart';

class NewsService {
  final Dio dio;
  final String newsType;

  NewsService({required this.newsType, required this.dio, t});

  Future<List<ArticleModel>> getNews() async {
    try {
      Response responce = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=873af1350c854a8aaf6adab437768724&category=$newsType');
      Map<String, dynamic> jsonData = responce.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
