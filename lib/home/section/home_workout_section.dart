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
            child: WorkoutCard(
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
            child: WorkoutCard(
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
