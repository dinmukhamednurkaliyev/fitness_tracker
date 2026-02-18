import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';

class HomeSocialMediaSection extends StatelessWidget {
  const HomeSocialMediaSection({
    required this.socials,
    super.key,
  });

  final List<SocialMediaCardData> socials;

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
        children: socials.map((data) {
          return SocialMediaCard(
            social: data,
          );
        }).toList(),
      ),
    );
  }
}
