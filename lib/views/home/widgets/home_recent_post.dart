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
        children: [
          HomeRecentPostCard(
            image:
                "https://m-cdn.phonearena.com/images/hub/290-wide-two_1200/Android-14-release-date-supported-devices-and-must-know-features.jpg",
            title: "Our “Secret” Formula to Online Workshops",
            onTap: () {},
          ),
          const SizedBox(height: kDefaultPadding),
          HomeRecentPostCard(
            image:
                "https://m-cdn.phonearena.com/images/hub/290-wide-two_1200/Android-14-release-date-supported-devices-and-must-know-features.jpg",
            title: "Digital Product Innovations from Warsaw with Love",
            onTap: () {},
          ),
          const SizedBox(height: kDefaultPadding),
          HomeRecentPostCard(
            image:
                "https://m-cdn.phonearena.com/images/hub/290-wide-two_1200/Android-14-release-date-supported-devices-and-must-know-features.jpg",
            title: "Digital Product Innovations from Warsaw with Love",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
