import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/profile/profile.dart';
import 'package:flutter/material.dart';

class ProfileMetricSection extends StatelessWidget {
  const ProfileMetricSection({required this.metrics, super.key});

  final List<MetricCardData> metrics;

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    return Row(
      spacing: spacing.md,
      children: metrics
          .map(
            (item) => Expanded(
              child: MetricCard(
                metric: item,
              ),
            ),
          )
          .toList(),
    );
  }
}
