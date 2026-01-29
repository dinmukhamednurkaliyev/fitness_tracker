import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:flutter/material.dart';

@immutable
class SessionCardData {
  const SessionCardData({
    required this.backgroundColor,
    required this.calories,
    required this.description,
    required this.difficulty,
    required this.duration,
    required this.trainerName,
    required this.title,
  });
  final String title;
  final String trainerName;
  final String duration;
  final String difficulty;
  final String calories;
  final String description;
  final Color backgroundColor;
}

class SessionCard extends StatelessWidget {
  const SessionCard({required this.session, required this.onTap, super.key});

  final SessionCardData session;
  final VoidCallback onTap;

  Color _getDifficultyColor(SemanticColor color, String difficulty) {
    switch (difficulty.toLowerCase()) {
      case 'easy':
        return color.difficultyEasy;
      case 'medium':
        return color.difficultyMedium;
      case 'hard':
        return color.difficultyHard;
      default:
        return color.iconGrey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    final color = context.color;
    final radius = context.radius;
    final text = context.text;
    final difficultyColor = _getDifficultyColor(color, session.difficulty);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(spacing.md),
        decoration: BoxDecoration(
          color: color.backgroundWhite,
          borderRadius: BorderRadius.circular(radius.xxxs),
          border: Border.all(
            color: color.backgroundWhite,
            width: 2,
          ),
        ),
        child: Row(
          spacing: spacing.sm,
          children: [
            Container(
              width: 4,
              height: 80,
              decoration: BoxDecoration(
                color: session.backgroundColor,
                borderRadius: BorderRadius.circular(radius.xxxs),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: spacing.sm,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        session.title,
                        style: text.bodyLarge.withColor(color.textPrimary),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: spacing.xxxs,
                          vertical: spacing.xxxs,
                        ),
                        decoration: BoxDecoration(
                          color: difficultyColor.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(spacing.xxxs),
                        ),
                        child: Text(
                          session.difficulty,
                          style: text.bodySmall.withColor(
                            difficultyColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Trainer: ${session.trainerName}',
                    style: text.bodySmall.withColor(color.textSecondary),
                  ),
                  Text(
                    session.description,
                    style: text.bodySmall.withColor(color.textSecondary),
                  ),
                  Row(
                    spacing: spacing.xxs,
                    children: [
                      _InfoChip(
                        icon: Icons.access_time,
                        title: session.duration,
                      ),
                      _InfoChip(
                        icon: Icons.local_fire_department,
                        title: session.calories,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: session.backgroundColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(radius.sm),
              ),
              child: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: session.backgroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  const _InfoChip({required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    final color = context.color;
    final text = context.text;
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: spacing.xxxs,
      children: [
        Icon(icon, size: 16, color: color.textSecondary),
        Text(title, style: text.bodySmall.withColor(color.textSecondary)),
      ],
    );
  }
}
