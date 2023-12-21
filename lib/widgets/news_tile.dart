import 'package:flutter/material.dart';
import 'package:whether_api/models/article_model.dart';
import 'package:whether_api/themes/colors.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.article,
  });

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    String image =
        'https://images.pexels.com/photos/5981703/pexels-photo-5981703.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            article.image ?? image,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          article.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          article.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(color: grey, fontSize: 14),
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
