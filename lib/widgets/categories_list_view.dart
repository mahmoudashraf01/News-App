import 'package:flutter/material.dart';
import 'package:whether_api/models/category_model.dart';
import 'package:whether_api/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModle> categories = const [
    CategoryModle(image: 'assets/buisness.jpeg', categoryName: 'Business'),
    CategoryModle(image: 'assets/news.jpeg', categoryName: 'General'),
    CategoryModle(image: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModle(image: 'assets/health.avif', categoryName: 'Health'),
    CategoryModle(image: 'assets/science.avif', categoryName: 'Science'),
    CategoryModle(image: 'assets/sports.jpeg', categoryName: 'Sports'),
    CategoryModle(image: 'assets/entertaiment.avif', categoryName: 'Entertainment'),
  ];  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
