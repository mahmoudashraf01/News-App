import 'package:flutter/material.dart';
import 'package:whether_api/models/category_model.dart';
import 'package:whether_api/themes/colors.dart';
import 'package:whether_api/themes/text.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final CategoryModle category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 140,
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(category.image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            category.categoryName,
            style: title1Bold.merge(
              const TextStyle(color: white),
            ),
          ),
        ),
      ),
    );
  }
}
