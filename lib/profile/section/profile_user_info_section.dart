import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/home/home.dart';
import 'package:flutter/material.dart';

class ProfileUserInfoSection extends StatelessWidget {
  const ProfileUserInfoSection({
    required this.address,
    required this.name,
    super.key,
    this.url,
    this.label,
  });

  final String? url;
  final String? label;
  final String name;
  final String address;

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    final text = context.text;
    final color = context.color;
    final radius = context.radius;
    return Row(
      spacing: spacing.sm,
      children: [
        UserAvatar(
          url: url,
          label: label,
          size: 80,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: text.titleLarge.withColor(color.textPrimary),
              ),
              SizedBox(height: spacing.xxxs),
              Text(
                address,
                style: text.titleSmall.withColor(color.textSecondary),
              ),
              Row(
                spacing: spacing.sm,
                children: [
                  Text(
                    'Followers 72',
                    style: text.bodyMedium.withColor(color.textPrimary),
                  ),
                  Text(
                    'Following 162',
                    style: text.bodyMedium.withColor(color.textPrimary),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          spacing: spacing.xxxs,
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: color.iconLightGrey.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(radius.sm),
              ),
              child: Icon(
                Icons.share,
                color: color.iconGrey,
                size: 18,
              ),
            ),
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: color.iconLightGrey.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(radius.sm),
              ),
              child: Icon(
                Icons.edit,
                color: color.iconGrey,
                size: 18,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
