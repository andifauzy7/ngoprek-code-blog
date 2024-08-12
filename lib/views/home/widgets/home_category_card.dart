import 'package:flutter/material.dart';

class HomeCategoryCard extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback? onTap;
  const HomeCategoryCard({
    super.key,
    required this.title,
    required this.numOfItems,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text.rich(
        TextSpan(
          text: title,
          children: [
            TextSpan(
              text: " ($numOfItems)",
            ),
          ],
        ),
      ),
    );
  }
}
