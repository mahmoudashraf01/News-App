import 'package:cached_network_image/cached_network_image.dart';
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
        'https://images.unsplash.com/photo-1586339949216-35c2747cc36d?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: CachedNetworkImage(
            imageUrl: article.image ?? image,
            placeholder: (context, url) => const CircularProgressIndicator(
              value: CircularProgressIndicator.strokeAlignCenter,
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover, // Adjust this based on your needs
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
