import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/home/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeWorkoutSection extends StatelessWidget {
  const HomeWorkoutSection({
    required this.workouts,
    super.key,
  });

  final List<WorkoutCardData> workouts;

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
            itemCount: workouts.length,
            separatorBuilder: (context, index) => SizedBox(width: spacing.sm),
            itemBuilder: (context, index) {
              final item = workouts[index];
              return SizedBox(
                width: itemWidth,
                child: WorkoutCard(
                  workout: item,
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
