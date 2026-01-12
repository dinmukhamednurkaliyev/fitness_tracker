import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/home/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeWorkoutPlanSection extends StatelessWidget {
  const HomeWorkoutPlanSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    final color = context.color;
    return SizedBox(
      height: 200,
      child: Row(
        spacing: spacing.sm,
        children: [
          Expanded(
            child: _WorkoutCard(
              plan: WorkoutPlan(
                title: 'Yoga Group',
                difficulty: 'Medium',
                date: '25 Nov.',
                time: '14:00-15:00',
                room: 'A5 room',
                trainerName: 'Kellie Jetton',
                trainerImage:
                    'https://images.unsplash.com/photo-1549351236-caca0f174515?q=80&w=928&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3DYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                backgroundColor: color.cardYellow,
              ),
              isLeft: true,
              onTap: () {
                context.go('/session-detail');
              },
            ),
          ),
          Expanded(
            child: _WorkoutCard(
              plan: WorkoutPlan(
                title: 'Cardio Group',
                difficulty: 'Hard',
                date: '28 Nov.',
                time: '10:00-11:00',
                room: 'A3 room',
                trainerName: 'Loretta Waller',
                trainerImage:
                    'https://images.unsplash.com/photo-1635328372330-757aa2e61d57?q=80&w=774&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                backgroundColor: color.cardBlue,
              ),
              isLeft: false,
              onTap: () {
                context.go('/session-detail');
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _WorkoutCard extends StatelessWidget {
  const _WorkoutCard({
    required this.plan,
    required this.isLeft,
    required this.onTap,
  });

  final WorkoutPlan plan;
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
          color: plan.backgroundColor,
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
                  plan.difficulty,
                  style: text.bodySmall.withColor(color.textPrimary),
                ),
              ),
              SizedBox(height: spacing.xxs),

              Text(
                plan.date,
                style: text.bodySmall.withColor(color.textSecondary),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                plan.time,
                style: text.bodySmall.withColor(color.textSecondary),
                maxLines: 1,
              ),
              Text(
                plan.room,
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
                      backgroundImage: NetworkImage(plan.trainerImage),
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
                            plan.trainerName,
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
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: color.iconLightGrey,
                      borderRadius: BorderRadius.circular(spacing.xxs),
                    ),
                    child: Icon(
                      size: 20,
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
