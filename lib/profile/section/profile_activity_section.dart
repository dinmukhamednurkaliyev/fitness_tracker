import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/profile/profile.dart';
import 'package:flutter/material.dart';

class ProfileActivitySection extends StatelessWidget {
  const ProfileActivitySection({required this.activities, super.key});

  final List<ActivityItemData> activities;

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    return Column(
      spacing: spacing.sm,
      children: activities
          .map(
            (item) => ActivityItem(
              activity: item,
              onTap: () {},
            ),
          )
          .toList(),
    );
  }
}
