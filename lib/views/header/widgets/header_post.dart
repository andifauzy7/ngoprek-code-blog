import 'package:flutter/material.dart';
import 'package:ngoprek_code_blog/constants.dart';
import 'package:ngoprek_code_blog/views/widgets/app_chip.dart';
import 'package:ngoprek_code_blog/views/widgets/app_network_image.dart';

class HeaderPost extends StatelessWidget {
  const HeaderPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: AppNetworkImage(
        aspectRatio: 1200 / 450,
        imageUrl: dummyPost[3]["image"] ?? '',
        alignment: Alignment.bottomLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppChip(label: 'Flutter'),
            const SizedBox(height: kDefaultPadding * 0.5),
            Text(
              dummyPost[3]["title"] ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    backgroundColor: kPrimaryColor.withOpacity(
                      0.3,
                    ),
                    color: Colors.white,
                  ),
            ),
            const SizedBox(height: kDefaultPadding * 0.5),
            Row(
              children: [
                Text(
                  'Andi Fauzy Dewantara',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                      ),
                ),
                const SizedBox(width: kDefaultPadding),
                Text(
                  'August 20, 2024',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
