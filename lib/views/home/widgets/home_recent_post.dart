import 'package:flutter/material.dart';
import 'package:ngoprek_code_blog/constants.dart';
import 'package:ngoprek_code_blog/views/home/widgets/home_recent_post_card.dart';
import 'package:ngoprek_code_blog/views/home/widgets/home_sidebar.dart';

class HomeRecentPost extends StatelessWidget {
  const HomeRecentPost({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeSidebar(
      title: "Recent Post",
      child: Column(
        children: dummyPost
            .map(
              (e) => Padding(
                padding: const EdgeInsets.only(bottom: kDefaultPadding),
                child: HomeRecentPostCard(
                  image: e['image'] ?? '',
                  title: e['title'] ?? '',
                  onTap: () {},
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
