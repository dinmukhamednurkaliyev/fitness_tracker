import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/home/home.dart';
import 'package:flutter/material.dart';

class SocialMediaCard extends StatelessWidget {
  const SocialMediaCard({
    required this.items,
    super.key,
  });

  final List<SocialMediaItem> items;

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    final radius = context.radius;

    return Container(
      padding: EdgeInsets.all(spacing.sm),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius.sm),
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: spacing.md,
        runSpacing: spacing.sm,
        children: items.map((item) {
          return SocialMediaIcon(
            icon: item.icon,
            iconColor: item.color,
          );
        }).toList(),
      ),
    );
  }
}
