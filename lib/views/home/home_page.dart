import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ngoprek_code_blog/constants.dart';
import 'package:ngoprek_code_blog/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      constraints: const BoxConstraints(maxWidth: kMaxWidth),
      child: Column(
        children: [
          GridView.builder(
            itemCount: 9,
            shrinkWrap: true,
            primary: false,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: () {
                if (Responsive.isDesktop(context)) {
                  return 3;
                }
                if (Responsive.isTablet(context)) {
                  return 2;
                }
                return 1;
              }(),
              childAspectRatio: 4 / 5,
              crossAxisSpacing: kDefaultPadding,
              mainAxisSpacing: kDefaultPadding,
            ),
            itemBuilder: (context, index) => _renderPostCard(
              context,
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
    );
  }

  Widget _renderPostCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 360 / 240,
            child: CachedNetworkImage(
              imageUrl:
                  "https://m-cdn.phonearena.com/images/hub/290-wide-two_1200/Android-14-release-date-supported-devices-and-must-know-features.jpg",
              imageBuilder: (_, image) => Container(
                padding: const EdgeInsets.all(kDefaultPadding),
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                    image: image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (_, __) => const CircularProgressIndicator(),
              errorWidget: (_, __, ___) => const Icon(Icons.error),
            ),
          ),
          const SizedBox(height: kDefaultPadding * 0.5),
          Chip(
            backgroundColor: kPrimaryColor.withOpacity(0.05),
            label: Text(
              'Flutter',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: kPrimaryColor,
                  ),
            ),
          ),
          const SizedBox(height: kDefaultPadding * 0.5),
          Text(
            'The Impact of Technology on the Workplace: How Technology is Changing.',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Andi Fauzy',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(width: kDefaultPadding),
              Text(
                'August 20, 2024',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
