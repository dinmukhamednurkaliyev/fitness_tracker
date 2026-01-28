import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:flutter/material.dart';

@immutable
class MetricCardData {
  const MetricCardData({
    required this.value,
    required this.backgroundColor,
    required this.title,
  });

  final String title;
  final String value;
  final Color backgroundColor;
}

class MetricCard extends StatelessWidget {
  const MetricCard({required this.metric, super.key});

  final MetricCardData metric;

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    final radius = context.radius;
    final color = context.color;
    return Container(
      height: 80,
      padding: EdgeInsets.all(spacing.sm),
      decoration: BoxDecoration(
        color: metric.backgroundColor,
        borderRadius: BorderRadius.circular(radius.xs),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            metric.title,
            style: context.text.bodySmall.withColor(color.textSecondary),
          ),
          Text(
            metric.value,
            style: context.text.titleMedium.withColor(color.textPrimary),
          ),
        ],
      ),
    );
  }
}
