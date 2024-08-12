import 'package:flutter/material.dart';
import 'package:ngoprek_code_blog/constants.dart';
import 'package:ngoprek_code_blog/responsive.dart';
import 'package:ngoprek_code_blog/views/home/widgets/home_categories.dart';
import 'package:ngoprek_code_blog/views/home/widgets/home_recent_post.dart';
import 'package:ngoprek_code_blog/views/widgets/app_network_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      constraints: const BoxConstraints(maxWidth: kMaxWidth),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                ListView.builder(
                  itemCount: dummyPost.length,
                  shrinkWrap: true,
                  itemBuilder: (c, i) => _renderPostCard(
                    c,
                    data: dummyPost[i],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: kDefaultPadding * 2,
                  ),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('Load More'),
                  ),
                ),
              ],
            ),
          ),
          if (!Responsive.isMobile(context))
            const SizedBox(width: kDefaultPadding),
          // Sidebar
          if (!Responsive.isMobile(context))
            const Expanded(
              child: Column(
                children: [
                  HomeCategories(),
                  SizedBox(height: kDefaultPadding),
                  HomeRecentPost(),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _renderPostCard(
    BuildContext context, {
    required Map<String, String> data,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppNetworkImage(
            aspectRatio: 2.4,
            imageUrl: data['image'] ?? '',
          ),
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Chip(
                      backgroundColor: kPrimaryColor.withOpacity(0.05),
                      label: Text(
                        'Flutter',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: kPrimaryColor,
                            ),
                      ),
                    ),
                    const SizedBox(width: kDefaultPadding),
                    Text(
                      'August 20, 2024',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                const SizedBox(height: kDefaultPadding * 0.5),
                Text(
                  data['title'] ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: kDefaultPadding * 0.5),
                Text(
                  data['description'] ?? '',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: kDefaultPadding),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        bottom: kDefaultPadding * 0.5,
                      ),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: kPrimaryColor),
                        ),
                      ),
                      child: const Text(
                        "Read More",
                        style: TextStyle(color: kDarkBlackColor),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.thumb_up),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.message),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.share),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
