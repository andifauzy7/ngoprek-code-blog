import 'package:flutter/material.dart';
import 'package:ngoprek_code_blog/views/home/widgets/home_category_card.dart';
import 'package:ngoprek_code_blog/views/home/widgets/home_sidebar.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeSidebar(
      title: "Categories",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeCategoryCard(
            title: 'Artificial Intelligence',
            numOfItems: 3,
            onTap: () {},
          ),
          HomeCategoryCard(
            title: 'Augmented reality',
            numOfItems: 4,
            onTap: () {},
          ),
          HomeCategoryCard(
            title: 'Development',
            numOfItems: 10,
            onTap: () {},
          ),
          HomeCategoryCard(
            title: 'Flutter UI',
            numOfItems: 18,
            onTap: () {},
          ),
          HomeCategoryCard(
            title: 'Technology',
            numOfItems: 12,
            onTap: () {},
          ),
          HomeCategoryCard(
            title: 'UI/UX Design',
            numOfItems: 8,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
