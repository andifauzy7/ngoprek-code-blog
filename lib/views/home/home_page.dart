import 'package:flutter/material.dart';
import 'package:ngoprek_code_blog/constants.dart';
import 'package:ngoprek_code_blog/responsive.dart';
import 'package:ngoprek_code_blog/views/widgets/app_network_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      constraints: const BoxConstraints(maxWidth: kMaxWidth),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                ListView.builder(
                  itemCount: 9,
                  shrinkWrap: true,
                  itemBuilder: (c, _) => _renderPostCard(c),
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
          if (!Responsive.isMobile(context)) const Spacer(),
        ],
      ),
    );
  }

  Widget _renderPostCard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppNetworkImage(
            aspectRatio: 2.4,
            imageUrl:
                "https://m-cdn.phonearena.com/images/hub/290-wide-two_1200/Android-14-release-date-supported-devices-and-must-know-features.jpg",
          ),
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
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
                  'The Impact of Technology on the Workplace: How Technology is Changing.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: kDefaultPadding * 0.5),
                const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
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
