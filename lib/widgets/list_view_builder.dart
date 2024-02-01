import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:whether_api/models/article_model.dart';
import 'package:whether_api/services/news_service.dart';
import 'package:whether_api/widgets/error_message.dart';
import 'package:whether_api/widgets/news_listview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key, required this.category,
  });

  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  dynamic future;
  @override
  void initState() {
    super.initState();
   future =  NewsService(dio: Dio(), newsType: widget.category).getNews();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Center(
              child: ErrorMessage(
                message: 'Opps there was an error, try again later!',
              ),
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}


