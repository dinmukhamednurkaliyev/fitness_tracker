import 'package:appearance/appearance.dart';
import 'package:flutter/material.dart';
import 'package:profile/profile.dart';

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
