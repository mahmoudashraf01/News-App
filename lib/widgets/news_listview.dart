import 'package:flutter/material.dart';
import 'package:whether_api/models/article_model.dart';
import 'package:whether_api/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
 final List<ArticleModel> articles;
  const NewsListView({
    super.key,
    required this.articles,
  });
  @override
  //firist state in statful widget cycle

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: NewsTile(
              article: articles[index],
            ),
          );
        },
      ),
    );
  }
}
