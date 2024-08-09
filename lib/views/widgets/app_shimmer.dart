import 'package:flutter/material.dart';
import 'package:ngoprek_code_blog/constants.dart';
import 'package:shimmer/shimmer.dart';

class AppShimmer extends StatelessWidget {
  final double borderRadius;

  const AppShimmer({
    super.key,
    this.borderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: kDividerColor,
          ),
        ),
      ),
    );
  }
}
