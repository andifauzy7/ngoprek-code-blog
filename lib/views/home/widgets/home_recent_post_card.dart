import 'package:flutter/material.dart';
import 'package:ngoprek_code_blog/constants.dart';
import 'package:ngoprek_code_blog/views/widgets/app_network_image.dart';

class HomeRecentPostCard extends StatelessWidget {
  final String image, title;
  final VoidCallback? onTap;
  const HomeRecentPostCard({
    super.key,
    required this.image,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: AppNetworkImage(
              imageUrl: image,
              aspectRatio: 1,
            ),
          ),
          const SizedBox(width: kDefaultPadding),
          Expanded(
            flex: 3,
            child: Text(
              title,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
