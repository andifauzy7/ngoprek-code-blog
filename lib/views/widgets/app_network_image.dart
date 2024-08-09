import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ngoprek_code_blog/constants.dart';
import 'package:ngoprek_code_blog/views/widgets/app_shimmer.dart';

class AppNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double aspectRatio;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final AlignmentGeometry? alignment;
  final Widget? child;

  const AppNetworkImage({
    super.key,
    required this.imageUrl,
    this.aspectRatio = 1,
    this.borderRadius = 12,
    EdgeInsetsGeometry? padding,
    this.child,
    this.alignment,
  }) : padding = padding ?? const EdgeInsets.all(kDefaultPadding);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder: (_, image) => Container(
          padding: padding,
          alignment: alignment,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
          child: child,
        ),
        placeholder: (_, __) => SizedBox(
          child: AppShimmer(borderRadius: borderRadius),
        ),
        errorWidget: (_, __, ___) => Container(
          color: kDividerColor,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: const Icon(Icons.broken_image),
        ),
      ),
    );
  }
}
