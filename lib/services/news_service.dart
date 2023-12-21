import 'package:dio/dio.dart';
import 'package:whether_api/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  Future<List<ArticleModel>> getNews() async {
    Response responce = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=873af1350c854a8aaf6adab437768724&category=science'
    );
    Map<String, dynamic> jsonData = responce.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description'],
      );
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
