import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:flutter/material.dart';

@immutable
class ActivityItemData {
  const ActivityItemData({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
  final String title;
  final String subtitle;
  final IconData icon;
}

class ActivityItem extends StatelessWidget {
  const ActivityItem({required this.activity, required this.onTap, super.key});
  final ActivityItemData activity;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    final color = context.color;
    final radius = context.radius;
    final text = context.text;
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: spacing.xxxs),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: color.borderLight)),
        ),
        child: Row(
          spacing: spacing.xxxs,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: color.iconLightGrey.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(radius.md),
              ),
              child: Icon(
                activity.icon,
                color: color.iconGrey,
                size: 20,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    activity.title,
                    style: text.bodyLarge.withColor(color.textPrimary),
                  ),
                  Text(
                    activity.subtitle,
                    style: text.bodyLarge.withColor(color.textSecondary),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: color.textSecondary,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
