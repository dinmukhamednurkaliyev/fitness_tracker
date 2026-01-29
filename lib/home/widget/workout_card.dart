import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:flutter/material.dart';

@immutable
class WorkoutCardData {
  const WorkoutCardData({
    required this.title,
    required this.difficulty,
    required this.date,
    required this.time,
    required this.room,
    required this.trainerName,
    required this.trainerImage,
    required this.backgroundColor,
  });
  final String title;
  final String difficulty;
  final String date;
  final String time;
  final String room;
  final String trainerName;
  final String trainerImage;
  final Color backgroundColor;
}

class WorkoutCard extends StatelessWidget {
  const WorkoutCard({
    required this.workout,
    required this.isLeft,
    required this.onTap,
    super.key,
  });

  final WorkoutCardData workout;
  final bool isLeft;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    final color = context.color;
    final text = context.text;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: workout.backgroundColor,
          borderRadius: BorderRadius.circular(spacing.xs),
          boxShadow: [
            BoxShadow(
              color: context.color.shadowMedium.withValues(alpha: 0.1),
              blurRadius: spacing.xs,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(spacing.sm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: spacing.xxs,
                  vertical: spacing.xxxs,
                ),
                decoration: BoxDecoration(
                  color: color.backgroundWhite.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(spacing.xxxs),
                ),
                child: Text(
                  workout.difficulty,
                  style: text.bodySmall.withColor(color.textPrimary),
                ),
              ),
              SizedBox(height: spacing.xxs),

              Text(
                workout.date,
                style: text.bodySmall.withColor(color.textSecondary),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                workout.time,
                style: text.bodySmall.withColor(color.textSecondary),
                maxLines: 1,
              ),
              Text(
                workout.room,
                style: text.bodySmall.withColor(color.textSecondary),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              const Spacer(),

              if (isLeft) ...[
                Row(
                  children: [
                    CircleAvatar(
                      radius: spacing.xs,
                      backgroundImage: NetworkImage(workout.trainerImage),
                      backgroundColor: color.backgroundWhite.withValues(
                        alpha: 0.5,
                      ),
                    ),
                    SizedBox(width: spacing.xxs),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Trainer',
                            style: text.labelSmall.withColor(
                              color.textSecondary,
                            ),
                          ),
                          Text(
                            workout.trainerName,
                            style: text.bodySmall.withColor(color.textPrimary),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ] else ...[
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: spacing.xl,
                    height: spacing.xl,
                    decoration: BoxDecoration(
                      color: color.iconLightGrey,
                      borderRadius: BorderRadius.circular(spacing.xxs),
                    ),
                    child: Icon(
                      size: spacing.md,
                      Icons.extension,
                      color: color.iconGrey,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
