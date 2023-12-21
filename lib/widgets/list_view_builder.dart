import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:whether_api/models/article_model.dart';
import 'package:whether_api/services/news_service.dart';
import 'package:whether_api/widgets/news_listview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;
  @override
  //firist state in statful widget cycle
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(dio: Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  //last state in statful widget cycle
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : NewsListView(
            articles: articles,
          );
  }
}