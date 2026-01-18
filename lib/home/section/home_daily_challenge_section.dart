import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/home/home.dart';
import 'package:flutter/material.dart';

class HomeDailyChallengeSection extends StatelessWidget {
  const HomeDailyChallengeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final gradient = context.gradient;
    final spacing = context.spacing;
    final radius = context.radius;
    final color = context.color;
    final text = context.text;
    return Container(
      padding: EdgeInsets.all(spacing.md),
      decoration: BoxDecoration(
        gradient: gradient.challengeCard,
        borderRadius: BorderRadius.circular(radius.md),
        boxShadow: [
          BoxShadow(
            color: color.shadowLight,
            blurRadius: radius.md,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: spacing.sm,
              children: [
                Text(
                  'Daily challenge',
                  style: text.titleLarge.withColor(color.textPrimary),
                ),
                Text(
                  'Do your plan before 09:00 AM',
                  style: text.labelLarge.withColor(color.textSecondary),
                ),
                const Row(
                  children: [
                    AvatarStack(
                      urls: [
                        '',
                        '',
                        '',
                        '',
                        '',
                        '',
                        '',
                        '',
                        '',
                        '',
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
