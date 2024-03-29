import 'package:flutter/material.dart';
import 'package:whether_api/methods/navigation.dart';
import 'package:whether_api/models/category_model.dart';
import 'package:whether_api/themes/colors.dart';
import 'package:whether_api/themes/text.dart';
import 'package:whether_api/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final CategoryModle category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        goTo(
          context: context,
          screen: CategoryView(
            category: category.categoryName,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10, bottom: 16),
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
      ),
    );
  }
}
