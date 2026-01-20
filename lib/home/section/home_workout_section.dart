import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/home/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

@immutable
class WorkoutPlanItem {
  const WorkoutPlanItem({
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

class HomeWorkoutPlanSection extends StatelessWidget {
  const HomeWorkoutPlanSection({
    required this.workoutPlans,
    super.key,
  });

  final List<WorkoutPlanItem> workoutPlans;

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacing;
    return SizedBox(
      height: 200,
      child: LayoutBuilder(
        builder: (context, constraints) {
          const count = 2;
          final totalSpacing = spacing.sm * (count - 1);
          final itemWidth = (constraints.maxWidth - totalSpacing) / count;

          return ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: workoutPlans.length,
            separatorBuilder: (context, index) => SizedBox(width: spacing.sm),
            itemBuilder: (context, index) {
              final plan = workoutPlans[index];
              // Simple logic to alternate "Left/Right" style layout if that's what isLeft implied
              // Or we can just default to one style. For now, alternating for variety.
              return SizedBox(
                width: itemWidth,
                child: WorkoutCard(
                  plan: plan,
                  isLeft: index.isEven,
                  onTap: () {
                    context.go('/session-detail');
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
