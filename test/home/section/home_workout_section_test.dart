import 'package:alchemist/alchemist.dart';
import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

void main() {
  group('HomeWorkoutSection Golden Tests', () {
    final workouts = [
      const WorkoutCardData(
        title: 'Morning Yoga',
        difficulty: 'Easy',
        date: 'Today',
        time: '08:00 AM',
        room: 'Room A',
        trainerName: 'Alice',
        trainerImage: 'https://example.com/alice.jpg',
        backgroundColor: Colors.blueAccent,
      ),
      const WorkoutCardData(
        title: 'HIIT',
        difficulty: 'Hard',
        date: 'Tomorrow',
        time: '06:00 PM',
        room: 'Room B',
        trainerName: 'Bob',
        trainerImage: 'https://example.com/bob.jpg',
        backgroundColor: Colors.orangeAccent,
      ),
    ];

    goldenTest(
      'renders correctly',
      fileName: 'home_workout_section',
      pumpWidget: (tester, widget) async {
        await mockNetworkImages(() => tester.pumpWidget(widget));
      },
      builder: () => GoldenTestGroup(
        scenarioConstraints: const BoxConstraints(maxWidth: 600),
        children: [
          GoldenTestScenario(
            name: 'Default',
            child: Theme(
              data: buildTheme(),
              child: SizedBox(
                width: 600,
                child: HomeWorkoutSection(workouts: workouts),
              ),
            ),
          ),
        ],
      ),
    );
  });
}
